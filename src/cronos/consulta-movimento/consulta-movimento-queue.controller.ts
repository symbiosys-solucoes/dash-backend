import { Controller, Logger } from '@nestjs/common';
import { EventPattern, Payload } from '@nestjs/microservices';
import { ConsultaMovimentoService } from './consulta-movimento.service';

@Controller()
export class ConsultaMovimentoQueueController {
  constructor(private service: ConsultaMovimentoService) {}

  private readonly logger = new Logger(ConsultaMovimentoQueueController.name);
  @EventPattern('consulta-movimento')
  async receive(@Payload() data: any) {
    this.logger.log('Message received: consulta-movimento');
    for (const it of data) {
      it.auto_cancelled = it.auto_cancelled === 'true' ? true : false;
      it.custom_print = it.custom_print === 'true' ? true : false;
      it.financial_block = it.financial_block === 'true' ? true : false;
      it.comercial_block = it.comercial_block === 'true' ? true : false;
      it.printed = it.printed === 'true' ? true : false;
    }

    await this.service.insertConsultaMovimento(data);
  }
}
