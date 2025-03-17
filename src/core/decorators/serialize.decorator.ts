import { UseInterceptors } from '@nestjs/common';
import { SerializeInterceptor } from '@core/interceptors/serialize.interceptor';

interface ClassConstructor {
  new (...args: any[]): any;
}

/**
 * 序列化装饰器
 *
 * @description 调用序列化拦截器
 */
export const Serialize = (dto: ClassConstructor) => {
  return UseInterceptors(new SerializeInterceptor(dto));
};
