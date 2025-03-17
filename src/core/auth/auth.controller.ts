import { Controller, Post, Body, Get, Req } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginDTO } from './dto/login.dto';
import { Result } from '@core/decorators';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('login')
  @Result()
  login(@Body() loginDto: LoginDTO) {
    return this.authService.login(loginDto);
  }

  @Get('codes')
  @Result()
  getUserPermissionCodes(@Req() req: any) {
    const { userId } = req.user;

    return this.authService.getUserPermissionCodes(userId.id);
  }
}
