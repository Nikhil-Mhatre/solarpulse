-- CreateTable
CREATE TABLE "identity" (
    "id" UUID NOT NULL,
    "name" VARCHAR(160) NOT NULL,
    "description" TEXT,
    "price" DECIMAL(12,2) NOT NULL,
    "currency" VARCHAR(3) NOT NULL DEFAULT 'INR',
    "category" VARCHAR(80) NOT NULL,
    "material" VARCHAR(80),
    "imageUrl" TEXT,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "identity_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "identity_category_isActive_idx" ON "identity"("category", "isActive");

-- CreateIndex
CREATE INDEX "identity_createdAt_idx" ON "identity"("createdAt");
