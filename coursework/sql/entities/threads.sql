CREATE TABLE Threads (
    thread_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    topic_id integer NOT NULL,
    init_comment_id integer NOT NULL,
    CONSTRAINT "topic_id_fk" 
    FOREIGN KEY (topic_id)
        REFERENCES Topics (id)
        ON DELETE RESTRICT,
    CONSTRAINT "init_comment_id_fk" 
    FOREIGN KEY (init_comment_id)
        REFERENCES Comments (id)
        ON DELETE RESTRICT,
);
