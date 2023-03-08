import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AuthModule } from './auth/auth.module';
import { ConsultaMovimentoModule } from './cronos/consulta-movimento/consulta-movimento.module';
import { PrismaModule } from './prisma/prisma.module';
import { UserModule } from './user/user.module';
import { ConsultaMovimentoService } from './cronos/consulta-movimento/consulta-movimento.service';

@Module({
  imports: [
    AuthModule,
    UserModule,
    PrismaModule,
    ConfigModule.forRoot({ isGlobal: true }),
    ConsultaMovimentoModule,
  ],
  providers: [ConsultaMovimentoService],
})
export class AppModule {}
