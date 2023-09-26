CREATE TABLE If NOT EXISTS "Biology_hierarchy"
(
    "id" INTEGER CONSTRAINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "characteristics" jsonb NOT NULL,
);

ALTER TABLE IF EXISTS "Biology_hierarchy"   
    OWNED TO s335047;
