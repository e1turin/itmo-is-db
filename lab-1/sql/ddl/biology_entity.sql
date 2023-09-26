CREATE TABLE IF NOT EXISTS "Biology_entity"
(
    "id" integer PRIMARY KEY GENERATED AS IDENTITY,
    "protection_method" integer,
    "hierarchy" integer,
    "name" character varying(255) NOT NULL,
    "live_epoch" integer,
    "location" integer NOT NULL,
    CONSTRAINT "Protection_FK" FOREIGN KEY "protection_method" 
        REFERENCES "Protection_method" ("id") ON DELETE NO ACTION,
    CONSTRAINT "Biology_hierarchy_FK" FOREIGN KEY "hierarchy"
        REFERENCES "Biology_hierarchy" ("id") ON DELETE NO ACTION,
    CONSTRAINT "Live_epoch_FK" FOREIGN KEY "live_epoch"
        REFERENCES "Live_epoch" ("id") ON DELETE NO ACTION,
    CONSTRAINT "Location_FK" FOREIGN KEY "location"
        REFERENCES "Location" ("id") ON DELETE RESTRICT    
);

ALTER TABLE IF EXISTS "Biology_entity"
    OWNER TO s335047;