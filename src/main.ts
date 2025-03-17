import { HttpAdapterHost, NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { WINSTON_MODULE_NEST_PROVIDER } from 'nest-winston';
import { ValidationPipe } from '@nestjs/common';
import { ExceptionFilter } from '@core/exception/exception.filter';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // 将日志替换为winston
  app.useLogger(app.get(WINSTON_MODULE_NEST_PROVIDER));

  // 全局异常过滤器
  const httpAdapterHost = app.get(HttpAdapterHost);
  app.useGlobalFilters(new ExceptionFilter(httpAdapterHost));

  // 开启全局数据校验管道
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      transform: true,
      transformOptions: {
        enableImplicitConversion: true,
      },
    }),
  );

  await app.listen(process.env.PORT ?? 3000);
}

bootstrap();
