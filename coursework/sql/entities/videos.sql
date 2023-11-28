CREATE TABLE Videos (
    video_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255),
    file oid NOT NULL,
);

CREATE TABLE Video_attachments (
    comment_id integer NOT NULL,
    video_id integer NOT NULL,
    CONSTRAINT "comment_id_fk" 
    FOREIGN KEY (comment_id)
        REFERENCES Comments (comment_id)
        ON DELETE CASCADE,
    CONSTRAINT "video_id_fk" 
    FOREIGN KEY (video_id)
        REFERENCES Videos (video_id)
        ON DELETE CASCADE,
    CONSTRAINT "video_attachments_pk"
    PRIMARY KEY (comment_id, video_id),
);