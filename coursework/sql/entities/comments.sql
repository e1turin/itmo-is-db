CREATE TABLE "Comments" (
    comment_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    thread_id integer NOT NULL,
    title varchar(255),
    content text NOT NULL,
    user_id integer NOT NULL,
    reactions_id integer,
    creation_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    trashed bool NOT NULL DEFAULT FALSE,
    deleted bool NOT NULL DEFAULT FALSE
);

CREATE TABLE "Replies" (
    comment_id integer NOT NULL,
    reply_comment_id integer NOT NULL,
    PRIMARY KEY (comment_id, reply_comment_id)
);
