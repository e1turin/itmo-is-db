CREATE TABLE IF NOT EXISTS "character"
(
    "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" character varying(255) NOT NULL,
    "known_BE" integer,
    "location" integer,
    CONSTRAINT "known_biology_entity_fk" 
    FOREIGN KEY ("known_BE")
        REFERENCES "biology_entity" ("id") ON DELETE NO ACTION,
    CONSTRAINT "location_fk" 
    FOREIGN KEY ("location")
        REFERENCES "location" ("id") ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS "character" 
    OWNER TO s335047;
