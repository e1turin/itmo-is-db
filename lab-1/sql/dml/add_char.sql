INSERT INTO TABLE "character" (name, location) 
SELECT 'Элли', loc.id
FROM (SELECT FIRST(id) FROM "location" WHERE name LIKE 'Бассейн') loc;

INSERT INTO TABLE "character" (name, location) 
SELECT 'Дуглас', loc.id
FROM (SELECT FIRST(id) FROM "location" WHERE name LIKE 'В пределах планеты Земля') loc;