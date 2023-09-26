CREATE TABLE IF NOT EXISTS "biology_entity"
(
    "id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    "hierarchy" integer,
    "name" character varying(255) NOT NULL,
    "live_epoch" integer,
    "location" integer NOT NULL,
    CONSTRAINT "biology_hierarchy_fk" 
    FOREIGN KEY ("hierarchy")
        REFERENCES "biology_hierarchy" ("id") 
        ON DELETE NO ACTION,
    CONSTRAINT "live_epoch_fk" 
    FOREIGN KEY ("live_epoch")
        REFERENCES "live_epoch" ("id") 
        ON DELETE NO ACTION,
    CONSTRAINT "location_fk" 
    FOREIGN KEY ("location")
        REFERENCES "location" ("id") 
        ON DELETE RESTRICT    
);

ALTER TABLE IF EXISTS "biology_entity"
    OWNER TO s335047;