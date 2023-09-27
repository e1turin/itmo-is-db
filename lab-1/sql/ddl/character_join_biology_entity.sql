CREATE TABLE IF NOT EXISTS "character_join_biology_entity"
(
    "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "character_id" integer NOT NULL,
    "biology_entity_id" integer NOT NULL,
    "detail" text,
    CONSTRAINT "character_id_fk" FOREIGN KEY ("character_id")
        REFERENCES "character" ("id")
        ON DELETE CASCADE,
    CONSTRAINT "biology_entity_id_fk" FOREIGN KEY ("biology_entity_id")
        REFERENCES "biology_entity" ("id")
        ON DELETE CASCADE
);

ALTER TABLE IF EXISTS "character_join_biology_entity"
    OWNER TO s335047;