CREATE TABLE IF NOT EXISTS "protection_method"
(
    "aim_entity_id" integer NOT NULL,
    "owner_entity_id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "description" text NOT NULL,
    CONSTRAINT "aim_entity_fk"
    FOREIGN KEY ("aim_entity_id")
        REFERENCES "biology_entity" ("id") 
        ON DELETE CASCADE,
    CONSTRAINT "owner_entity_fk" 
    FOREIGN KEY ("owner_entity_id")
        REFERENCES "biology_entity" ("id") 
        ON DELETE CASCADE,
    CONSTRAINT "protection_method_pk" 
    PRIMARY KEY ("aim_entity_id", "owner_entity_id")
);

ALTER TABLE IF EXISTS "protection_method"
    OWNER TO s335047;