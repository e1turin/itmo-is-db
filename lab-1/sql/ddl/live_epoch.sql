CREATE TABLE IF NOT EXISTS "live_epoch"
(
    "id" integer CONSTRAINT "live_epoch_pk" PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "description" text NOT NULL,
    "time_interval" jsonb
);

ALTER TABLE IF EXISTS "live_epoch"
    OWNER TO s335047;