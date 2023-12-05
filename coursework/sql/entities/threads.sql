CREATE TABLE "Threads" (
    thread_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    topic_id integer NOT NULL,
    init_comment_id integer NOT NULL,
    popularity INTEGER NOT NULL DEFAULT 0
);
