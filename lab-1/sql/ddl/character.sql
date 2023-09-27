CREATE TABLE IF NOT EXISTS "character"
(
    "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" character varying(255) NOT NULL,
    "location" integer,
    CONSTRAINT "location_fk" 
    FOREIGN KEY ("location")
        REFERENCES "location" ("id") 
        ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS "character" 
    OWNER TO s335047;
