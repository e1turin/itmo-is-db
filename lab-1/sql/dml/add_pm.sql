INSERT INTO TABLE "protection_method" ( aim_entity_id, owner_entity_id, name, description) 
SELECT aim.id, owner.id, 'феромоны', 'отпугивают насекомых, сообщаяют другим деревьям об опасности'
FROM (SELECT id FROM "biology_entity" WHERE name LIKE 'Ели Дугласа') aim,
    (SELECT id from "biology_entity" WHERE name LIKE 'Насекомые') owner;