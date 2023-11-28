CREATE TABLE Comments (
    thread_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title varchar(255),
    content text,
    user_id integer NOT NULL,
    reactions_id integer,
    date timestamp NOT NULL,
    hidden bool NOT NULL
);

CREATE TABLE Replies (
    comment_id integer NOT NULL,
    repply_comment_id integer NOT NULL,
    CONSTRAINT "comment_id_fk" 
    FOREIGN KEY (comment_id)
        REFERENCES Comments (id)
        ON DELETE NO ACTION,
    CONSTRAINT "reply_comment_id_fk" 
    FOREIGN KEY (repply_comment_id)
        REFERENCES Comments (id)
        ON DELETE NO ACTION,
    CONSTRAINT "comments_pk" 
    PRIMARY KEY (comment_id, repply_comment_id)
);