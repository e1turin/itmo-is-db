INSERT INTO  "character" (name, location) 
    SELECT 'Элли', loc.id
    FROM (SELECT id FROM "location" WHERE name LIKE 'Бассейн') loc;

INSERT INTO  character (name, location) 
    SELECT 'Дуглас', location.id
    FROM location
    WHERE location.name = 'В пределах планеты Земля';