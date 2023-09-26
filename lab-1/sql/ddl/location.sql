CREATE TABLE IF NOT EXISTS "location"
(
    "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" character varying(255) NOT NULL
);

ALTER TABLE IF EXISTS "location"
    OWNER TO s335047;