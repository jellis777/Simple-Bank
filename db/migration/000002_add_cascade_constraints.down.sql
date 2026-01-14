-- Drop CASCADE constraints
ALTER TABLE "entries" DROP CONSTRAINT "entries_account_id_fkey";
ALTER TABLE "transfers" DROP CONSTRAINT "transfers_from_account_id_fkey";
ALTER TABLE "transfers" DROP CONSTRAINT "transfers_to_account_id_fkey";

-- Restore original foreign key constraints (without CASCADE)
ALTER TABLE "entries" ADD FOREIGN KEY ("account_id") REFERENCES "accounts" ("id");
ALTER TABLE "transfers" ADD FOREIGN KEY ("from_account_id") REFERENCES "accounts" ("id");
ALTER TABLE "transfers" ADD FOREIGN KEY ("to_account_id") REFERENCES "accounts" ("id");
