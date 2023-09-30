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

-- INSERT INTO "biology_entity" ("hierarchy", "name", "live_epoch", "location") 
--      SELECT h."id", 'Насекомые', le."id", loc."id"
--      FROM (SELECT id FROM "biology_hierarchy" WHERE "name" LIKE 'Насекомые') h, 
--           (SELECT id FROM "live_epoch" WHERE "description" LIKE 'очень давно') le, 
--           (SELECT id FROM "location" WHERE "name" LIKE 'Лес') loc;

INSERT INTO biology_entity (hierarchy, name, live_epoch, location) 
     SELECT biology_hierarchy.id, 'Насекомые', live_epoch.id, location.id
     FROM biology_hierarchy, live_epoch, location
     WHERE biology_hierarchy.name = 'Насекомые', 
       AND live_epoch.description = 'очень давно', 
       AND location.name = 'Лес';