import { Injectable } from '@nestjs/common';

@Injectable({})
export class AuthService {
  signup() {
    return { message: 'I am Signup' };
  }

  signin() {
    return { message: 'I am Signin' };
  }

  signout() {}
}
