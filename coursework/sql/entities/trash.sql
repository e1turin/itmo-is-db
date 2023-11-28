CREATE TABLE Trash (
    trash_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    comment_id integer NOT NULL,
    reason text,
    CONSTRAINT "comment_id_fk" 
    FOREIGN KEY (comment_id)
        REFERENCES Comments (comment_id)
        ON DELETE NO ACTION
);