CREATE TABLE IF NOT EXISTS "Character"
(
    "id" integer CONSTRAINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" character varying(255),
    "known_BE" integer,
    "location" integer,
    CONSTRAINT "Known_Biology_Entity_FK" FOREIGN KEY "known_BE" 
        REFERENCES "Biology_entity" ("id") ON DELETE NO ACTION,
    CONSTRAINT "Location_FK" FOREIGN KEY "location" 
        REFERENCES "Location" ("id") ON DELETE RESTRICT,
);

ALTER TABLE IF EXISTS "Character" 
    OWNER TO s335047;
