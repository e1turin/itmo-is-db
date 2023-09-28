INSERT INTO  "character" (name, location) 
SELECT 'Элли', loc.id
FROM (SELECT id FROM "location" WHERE name LIKE 'Бассейн') loc;

INSERT INTO  "character" (name, location) 
SELECT 'Дуглас', loc.id
FROM (SELECT id FROM "location" WHERE name LIKE 'В пределах планеты Земля') loc;