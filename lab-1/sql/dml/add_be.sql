INSERT INTO "biology_entity" ("hierarchy", "name", "live_epoch", "location") 
SELECT h."id", 'Папоротник', le."id", loc."id"
FROM (SELECT id FROM "biology_hierarchy" WHERE "name" LIKE 'Папоротники') h, 
     (SELECT id FROM "live_epoch" WHERE "description" LIKE 'очень давно') le, 
     (SELECT id FROM "location" WHERE "name" LIKE 'Бассейн') loc;

INSERT INTO "biology_entity" ("hierarchy", "name", "live_epoch", "location") 
SELECT h."id", 'Ели Дугласа', le."id", loc."id"
FROM (SELECT id FROM "biology_hierarchy" WHERE "name" LIKE 'Ели Дугласа') h, 
     (SELECT id FROM "live_epoch" WHERE "description" LIKE 'Настоящее время') le, 
     (SELECT id FROM "location" WHERE "name" LIKE 'Лес') loc;

INSERT INTO "biology_entity" ("hierarchy", "name", "live_epoch", "location") 
SELECT h."id", 'Насекомые', le."id", loc."id"
FROM (SELECT id FROM "biology_hierarchy" WHERE "name" LIKE 'Насекомые') h, 
     (SELECT id FROM "live_epoch" WHERE "description" LIKE 'очень давно') le, 
     (SELECT id FROM "location" WHERE "name" LIKE 'Лес') loc;