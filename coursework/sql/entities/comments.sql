CREATE TABLE Comments (
    comment_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title varchar(255),
    content text NOT NULL,
    user_id integer NOT NULL,
    reactions_id integer,
    creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    hidden bool NOT NULL DEFAULT FALSE,
    CONSTRAINT "reaction_set_id_fk" 
    FOREIGN KEY (reactions_id)
        REFERENCES Reaction_sets (r_set_id)
        ON DELETE SET NULL,
    CONSTRAINT "user_id_fk" 
    FOREIGN KEY (user_id)
        REFERENCES Users (user_id)
        ON DELETE RESTRICT,
);

CREATE TABLE Replies (
    comment_id integer NOT NULL,
    repply_comment_id integer NOT NULL,
    CONSTRAINT "comment_id_fk" 
    FOREIGN KEY (comment_id)
        REFERENCES Comments (comment_id)
        ON DELETE NO ACTION,
    CONSTRAINT "reply_comment_id_fk" 
    FOREIGN KEY (repply_comment_id)
        REFERENCES Comments (comment_id)
        ON DELETE NO ACTION,
    CONSTRAINT "comments_pk" 
    PRIMARY KEY (comment_id, repply_comment_id)
);