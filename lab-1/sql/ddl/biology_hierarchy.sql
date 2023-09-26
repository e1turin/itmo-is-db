CREATE TABLE If NOT EXISTS "biology_hierarchy"
(
    "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "name" character varying(255) NOT NUll,
    "characteristics" jsonb
);

ALTER TABLE IF EXISTS "biology_hierarchy"   
    OWNER TO s335047;
