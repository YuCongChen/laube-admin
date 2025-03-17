import { HttpException } from '@nestjs/common';

export class PermissionException extends HttpException {
  constructor(message: string) {
    super(message, 403);
  }
}
