INSERT INTO "character_join_biology_entity" (character_id, biology_entity_id)
SELECT ch.id, be.id
FROM (SELECT id FROM "character" WHERE name LIKE 'Элли') ch,
    (SELECT id FROM "biology_entity" WHERE name LIKE 'Папоротник') be