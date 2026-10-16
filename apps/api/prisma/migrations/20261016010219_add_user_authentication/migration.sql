/*
  Warnings:

  - A unique constraint covering the columns `[AuthProviderId]` on the table `Users` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateEnum
CREATE TYPE "UserRole" AS ENUM ('STUDENT', 'CONTENT_EDITOR', 'ADMIN');

-- AlterTable
ALTER TABLE "Users" ADD COLUMN     "AuthProviderId" VARCHAR(255),
ADD COLUMN     "IsActive" BOOLEAN NOT NULL DEFAULT true,
ADD COLUMN     "Role" "UserRole" NOT NULL DEFAULT 'STUDENT';

-- CreateIndex
CREATE UNIQUE INDEX "Users_AuthProviderId_key" ON "Users"("AuthProviderId");
