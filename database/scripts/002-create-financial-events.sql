CREATE TYPE "financialEventType" AS ENUM ('INCOME', 'OUTCOME');

CREATE TABLE "financialEvents" (
  "id" SERIAL PRIMARY KEY,
  "userId" INTEGER NOT NULL REFERENCES "users"("id"),
  "value" INTEGER NOT NULL CHECK ("value" > 0),
  "type" "financialEventType" NOT NULL
);
