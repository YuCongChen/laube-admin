import { InternalServerErrorException } from '@nestjs/common';

export class ConvertException extends InternalServerErrorException {
  constructor(message: string) {
    super({
      message: `转换失败: ${message}`,
    });
  }
}
