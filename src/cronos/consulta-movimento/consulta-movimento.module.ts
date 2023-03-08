import { Module } from '@nestjs/common';
import { ConsultaMovimentoQueueController } from './consulta-movimento-queue.controller';
import { ConsultaMovimentoService } from './consulta-movimento.service';

@Module({
  providers: [ConsultaMovimentoService],
  controllers: [ConsultaMovimentoQueueController],
})
export class ConsultaMovimentoModule {}
