/*
  Warnings:

  - You are about to drop the column `invoicing_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "cronos_consulta_movimento" DROP COLUMN "invoicing_DateTime",
ADD COLUMN     "date" TIMESTAMP(3);
