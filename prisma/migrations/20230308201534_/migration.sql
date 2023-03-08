/*
  Warnings:

  - You are about to drop the column `cancelled_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `comercial_authorization_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `financial_authorization_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `invoice_autorization_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `invoice_delivery_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `invoice_finalization_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `invoice_print_DateTime` on the `cronos_consulta_movimento` table. All the data in the column will be lost.
  - You are about to drop the column `invoice_separation_DateTime_end` on the `cronos_consulta_movimento` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "cronos_consulta_movimento" DROP COLUMN "cancelled_DateTime",
DROP COLUMN "comercial_authorization_DateTime",
DROP COLUMN "financial_authorization_DateTime",
DROP COLUMN "invoice_autorization_DateTime",
DROP COLUMN "invoice_delivery_DateTime",
DROP COLUMN "invoice_finalization_DateTime",
DROP COLUMN "invoice_print_DateTime",
DROP COLUMN "invoice_separation_DateTime_end",
ADD COLUMN     "cancelled_date" TIMESTAMP(3),
ADD COLUMN     "comercial_authorization_date" TIMESTAMP(3),
ADD COLUMN     "financial_authorization_date" TIMESTAMP(3),
ADD COLUMN     "invoice_autorization_date" TIMESTAMP(3),
ADD COLUMN     "invoice_delivery_date" TIMESTAMP(3),
ADD COLUMN     "invoice_finalization_date" TIMESTAMP(3),
ADD COLUMN     "invoice_print_date" TIMESTAMP(3),
ADD COLUMN     "invoice_separation_date_end" TIMESTAMP(3);
