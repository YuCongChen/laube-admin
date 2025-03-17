import { Module } from '@nestjs/common';
import { ConfigModule } from '@core/config/config.module';
import { LoggerModule } from '@core/logger/logger.module';
import { RedisModule } from '@core/redis/redis.module';
import { PrismaModule } from '@core/prisma/prisma.module';
import { AuthModule } from '@core/auth/auth.module';
import { ScheduleModule } from '@nestjs/schedule';
import { APP_GUARD } from '@nestjs/core';
import { JwtGuard } from '@core/guards/jwt.guard';
import { PermissionGuard } from '@core/guards/permission.guard';
import { SystemModule } from '@modules/system/system.module';

@Module({
  imports: [
    ConfigModule,
    LoggerModule,
    RedisModule,
    PrismaModule.forRootAsync(),
    AuthModule,
    ScheduleModule.forRoot(),
    SystemModule,
  ],
  providers: [
    {
      provide: APP_GUARD,
      useClass: JwtGuard,
    },
    {
      provide: APP_GUARD,
      useClass: PermissionGuard,
    },
  ],
})
export class AppModule {}
