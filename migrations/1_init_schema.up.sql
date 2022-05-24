CREATE TABLE "clients" (
    "id" bigserial PRIMARY KEY,
    "name" varchar NOT NULL,
    "surname" varchar NOT NULL,
);

CREATE TEBLE "bills" (
    "id" bigserial PRIMARY KEY,
    "amount" bigint NOT NULL,
    "currency" varchar NOT NULL,
    "client_id" bigint NOT NULL,
)

ALTER TABLE "bills" ADD FOREIGN KEY ("client_id") REFERENCES "clients" ("id");

CREATE INDEX "name" ("clients");

CREATE INDEX "surname" ("clients");

CREATE INDEX "bills" ("client_id");
