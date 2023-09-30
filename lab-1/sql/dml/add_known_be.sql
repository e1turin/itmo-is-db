INSERT INTO "character_join_biology_entity" (character_id, biology_entity_id)
    SELECT ch.id, be.id
    FROM (SELECT id FROM "character" WHERE name LIKE 'Элли') ch,
         (SELECT id FROM "biology_entity" WHERE name LIKE 'Папоротник') be

-- or another way

INSERT INTO "character_join_biology_entity" (character_id, biology_entity_id)
    SELECT "character".id, "biology_entity".id
    FROM "character", "location"
    WHERE "character".name = 'Элли',
      AND "biogy_entity".name = 'Папоротник';