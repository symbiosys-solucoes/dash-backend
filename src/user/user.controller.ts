import { JwtGuard } from './../auth/guard/jwt.guard';
import { GetUser } from './../auth/decorator/get-user.decorator';
import { Controller, Get, UseGuards } from '@nestjs/common';
import { User } from '@prisma/client';

@Controller('users')
export class UserController {
  @UseGuards(JwtGuard)
  @Get('me')
  getMe(@GetUser() user: User) {
    return user;
  }
}
