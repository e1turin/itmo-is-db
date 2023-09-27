INSERT INTO TABLE "biology_entites" ("hierarchy", "name", "live_epoch", "location") 
SELECT h."id", 'Папоротник', NULL, loc."id"
FROM (SELECT FIRST(id) FROM "biology_hierarchy" WHERE "name" LIKE 'Папоротник') h, 
     (SELECT FIRST(id) FROM "locatin" WHERE "name" LIKE 'Бассейн') loc;

INSERT INTO TABLE "biology_entites" ("hierarchy", "name", "live_epoch", "location") 
SELECT h."id", 'Ели Дугласа', NULL, loc."id"
FROM (SELECT FIRST(id) FROM "biology_hierarchy" WHERE "name" LIKE 'Ели Дугласа') h, 
     (SELECT FIRST(id) FROM "locatin" WHERE "name" LIKE 'Лес') loc;