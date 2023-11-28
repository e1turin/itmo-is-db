CREATE TABLE Capcha (
    capcha_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    answer varchar(255),
    picture_id integer NOT NULL,
    CONSTRAINT "picture_id_fk" 
    FOREIGN KEY (picture_id)
        REFERENCES Pictures (picture_id)
        ON DELETE CASCADE
);
