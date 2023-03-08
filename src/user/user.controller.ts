import { UserService } from './user.service';
import { EditUserDto } from './dto/edit-user.dto';
import { JwtGuard } from './../auth/guard/jwt.guard';
import { GetUser } from './../auth/decorator/get-user.decorator';
import { Body, Controller, Get, Patch, UseGuards } from '@nestjs/common';
import { User } from '@prisma/client';

@Controller('users')
export class UserController {
  constructor(private userService: UserService) {}

  @UseGuards(JwtGuard)
  @Get('me')
  getMe(@GetUser() user: User) {
    return user;
  }

  @Patch()
  editUser(@GetUser('id') userId: number, @Body() dto: EditUserDto) {
    return this.userService.editUser(userId, dto);
  }
}
