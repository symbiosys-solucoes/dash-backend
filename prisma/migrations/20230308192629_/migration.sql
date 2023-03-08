/*
  Warnings:

  - You are about to drop the column `updateAt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `bookmarks` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `upDateTimeAt` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "bookmarks" DROP CONSTRAINT "bookmarks_userId_fkey";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "updateAt",
ADD COLUMN     "upDateTimeAt" TIMESTAMP(3) NOT NULL;

-- DropTable
DROP TABLE "bookmarks";

-- CreateTable
CREATE TABLE "cronos_consulta_movimento" (
    "id" SERIAL NOT NULL,
    "insertedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "company_id" BIGINT NOT NULL,
    "nf_reject_motive" TEXT NOT NULL,
    "id_company_erp" TEXT NOT NULL,
    "person_type" TEXT NOT NULL,
    "company_name" TEXT NOT NULL,
    "stock_id" TEXT NOT NULL,
    "stock_name" TEXT NOT NULL,
    "invoice_id" INTEGER NOT NULL,
    "cancelled_DateTime" TIMESTAMP(3) NOT NULL,
    "additional_expenses" DECIMAL(65,30) NOT NULL,
    "cancelled_user_id" TEXT NOT NULL,
    "invoice_number" BIGINT NOT NULL,
    "invoice_serie" TEXT NOT NULL,
    "invoice_DateTime" TIMESTAMP(3) NOT NULL,
    "invoice_type" TEXT NOT NULL,
    "fiscal_code" TEXT NOT NULL,
    "cancelled_motive" TEXT NOT NULL,
    "customer_code" TEXT NOT NULL,
    "customer_cpf_cnpj" TEXT NOT NULL,
    "customer_name" TEXT NOT NULL,
    "customer_full_name" TEXT NOT NULL,
    "customer_district" TEXT NOT NULL,
    "customer_fax_number" TEXT NOT NULL,
    "invoice_status" TEXT NOT NULL,
    "invoice_total" DECIMAL(65,30) NOT NULL,
    "invoice_discount_percentual" DECIMAL(65,30) NOT NULL,
    "invoice_salesman_code" TEXT NOT NULL,
    "invoice_saalesman_name" TEXT NOT NULL,
    "invoice_supervisor_name" TEXT NOT NULL,
    "invoice_separator_code" TEXT NOT NULL,
    "invoice_conffering_code" TEXT NOT NULL,
    "blocked_message" TEXT NOT NULL,
    "payment_condition_code" TEXT NOT NULL,
    "invoicing_DateTime" TIMESTAMP(3) NOT NULL,
    "invoice_createdAt" TIMESTAMP(3) NOT NULL,
    "invoice_user_id" TEXT NOT NULL,
    "comercial_block_message" TEXT NOT NULL,
    "financial_block_message" TEXT NOT NULL,
    "invoice_obs" TEXT NOT NULL,
    "pdv" TEXT NOT NULL,
    "icms_base" DECIMAL(65,30) NOT NULL,
    "printed" BOOLEAN NOT NULL,
    "payment_condition_description" TEXT NOT NULL,
    "origin_invoice_id" BIGINT NOT NULL,
    "insurence_value" DECIMAL(65,30) NOT NULL,
    "freight_value" DECIMAL(65,30) NOT NULL,
    "invoice_print_DateTime" TIMESTAMP(3) NOT NULL,
    "invoice_delivery_priority" TEXT NOT NULL,
    "invoice_aux_number" TEXT NOT NULL,
    "invoice_separation_DateTime_begin" TIMESTAMP(3) NOT NULL,
    "invoice_autorization_DateTime" TIMESTAMP(3) NOT NULL,
    "invoice_separation_DateTime_end" TIMESTAMP(3) NOT NULL,
    "invoice_separation_status" TEXT NOT NULL,
    "nfe_key" TEXT NOT NULL,
    "invoice_delivery_DateTime" TIMESTAMP(3) NOT NULL,
    "separator_name" TEXT NOT NULL,
    "conffering_name" TEXT NOT NULL,
    "comercial_block" BOOLEAN NOT NULL,
    "financial_block" BOOLEAN NOT NULL,
    "invoice_tracking" TEXT NOT NULL,
    "expedition_id" BIGINT NOT NULL,
    "comercial_authorization_DateTime" TIMESTAMP(3) NOT NULL,
    "financial_authorization_DateTime" TIMESTAMP(3) NOT NULL,
    "expedition_description" TEXT NOT NULL,
    "financial_authorization_user_id" TEXT NOT NULL,
    "comercial_authorization_user_id" TEXT NOT NULL,
    "cancelled_total" DECIMAL(65,30) NOT NULL,
    "discount_percentage_block" DECIMAL(65,30) NOT NULL,
    "auto_cancelled" BOOLEAN NOT NULL,
    "custom_print" BOOLEAN NOT NULL,
    "invoice_destination" TEXT NOT NULL,
    "invoice_origin" TEXT NOT NULL,
    "invoice_finalization_DateTime" TIMESTAMP(3) NOT NULL,
    "nfe_status" TEXT NOT NULL,
    "customer_category" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "invoice_standard_value" DECIMAL(65,30) NOT NULL,
    "invoice_increase_value" DECIMAL(65,30) NOT NULL,
    "invoice_discount_total" DECIMAL(65,30) NOT NULL,
    "invoice_liquid_value" DECIMAL(65,30) NOT NULL,

    CONSTRAINT "cronos_consulta_movimento_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "cronos_consulta_movimento_invoice_id_key" ON "cronos_consulta_movimento"("invoice_id");
