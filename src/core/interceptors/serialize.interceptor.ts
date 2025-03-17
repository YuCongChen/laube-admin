import {
  CallHandler,
  ExecutionContext,
  Injectable,
  NestInterceptor,
} from '@nestjs/common';
import { catchError, map, Observable } from 'rxjs';
import { convertToInstance } from '@core/utils/convert.util';

/**
 * 序列化拦截器
 *
 * @description 用于序列化接口返回值
 */
@Injectable()
export class SerializeInterceptor implements NestInterceptor {
  constructor(private dto: any) {}

  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    return next.handle().pipe(
      map(async (data) => {
        const result = await convertToInstance(this.dto, data);

        return result;
      }),
      catchError((error) => {
        throw error;
      }),
    );
  }
}
