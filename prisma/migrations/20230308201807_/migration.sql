/*
  Warnings:

  - You are about to drop the column `invoice_separation_DateTime_begin` on the `cronos_consulta_movimento` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "cronos_consulta_movimento" DROP COLUMN "invoice_separation_DateTime_begin",
ADD COLUMN     "invoice_separation_date_begin" TIMESTAMP(3);
