import {
  ArgumentsHost,
  Catch,
  ExceptionFilter as NestExceptionFilter,
  HttpException,
  Logger,
  InternalServerErrorException,
  UnauthorizedException,
  BadRequestException,
} from '@nestjs/common';
import { HttpAdapterHost } from '@nestjs/core';
import { Request, Response } from 'express';
import * as dayjs from 'dayjs';

/**
 * 全局异常过滤器
 *
 * @description 捕获所有异常，并返回统一的错误响应
 */
@Catch()
export class ExceptionFilter implements NestExceptionFilter {
  private logger = new Logger();

  constructor(private httpAdapterHost: HttpAdapterHost) {}

  catch(exception: HttpException, host: ArgumentsHost) {
    const { httpAdapter } = this.httpAdapterHost;
    const ctx = host.switchToHttp();

    const request = ctx.getRequest<Request>();
    const response = ctx.getResponse<Response>();
    const statusCode = exception.getStatus ? exception.getStatus() : 500;

    const nodeEnv = process.env.NODE_ENV;

    let message = exception.message;

    if (exception instanceof InternalServerErrorException) {
      message = '服务器内部错误，请联系管理员';
    }

    if (exception instanceof UnauthorizedException) {
      message = '登录已过期，请重新登录';
    }

    if (exception instanceof BadRequestException) {
      if (Array.isArray(exception.getResponse()['message'])) {
        message = exception.getResponse()['message'].join(';');
      } else {
        message = exception.getResponse()['message'];
      }
    }

    // 在生产环境, 错误堆栈记录在日志中。
    const resContents = {
      status: statusCode,
      header: request.headers,
      query: request.query,
      body: request.body,
      message: message,
      time: dayjs().format('YYYY-MM-DD HH:mm:ss'),
      path: request.url,
      stack: exception.stack,
    };

    this.logger.error(resContents.message, resContents);

    if (nodeEnv === 'production') {
      delete resContents.stack;
    }

    httpAdapter.reply(response, resContents, statusCode);
  }
}
