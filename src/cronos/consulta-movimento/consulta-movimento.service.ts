import { Injectable, Logger } from '@nestjs/common';
import { CronosConsultaMovimento } from '@prisma/client';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ConsultaMovimentoService {
  constructor(private prisma: PrismaService) {}
  private readonly logger = new Logger(ConsultaMovimentoService.name);

  async insertConsultaMovimento(data: CronosConsultaMovimento[]) {
    const movimentos: CronosConsultaMovimento[] = [];
    for (const it of data) {
      it.company_id = BigInt(1);
      try {
        this.logger.log(
          'Upserting consulta-movimento invoice id:' + it.invoice_id.toString(),
        );
        const result = await this.prisma.cronosConsultaMovimento.upsert({
          where: { invoice_id: it.invoice_id ?? null },
          create: { ...it },
          update: { ...it },
        });
        movimentos.push(result);
      } catch (error) {
        this.logger.error(
          'Error upserting consulta-movimento id:' + it.invoice_id.toString(),
        );
      }
    }
    return movimentos;
  }
}
