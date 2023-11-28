CREATE TABLE Pictures (
    picture_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255),
    file oid NOT NULL,
);

CREATE TABLE Picture_attachments (
    comment_id integer NOT NULL,
    picture_id integer NOT NULL,
    CONSTRAINT "comment_id_fk" 
    FOREIGN KEY (comment_id)
        REFERENCES Comments (comment_id)
        ON DELETE CASCADE,
    CONSTRAINT "picture_id_fk" 
    FOREIGN KEY (picture_id)
        REFERENCES Pictures (picture_id)
        ON DELETE CASCADE,
    CONSTRAINT "picture_attachments_pk"
    PRIMARY KEY (comment_id, picture_id),
);
