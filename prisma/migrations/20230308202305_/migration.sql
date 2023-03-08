/*
  Warnings:

  - You are about to drop the column `invoice_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "cronos_consulta_movimento" DROP COLUMN "invoice_DateTime",
ADD COLUMN     "invoice_date" TIMESTAMP(3),
ALTER COLUMN "invoice_number" SET DATA TYPE TEXT;
