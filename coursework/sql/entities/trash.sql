CREATE TABLE "Trash" (
    trash_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    comment_id integer NOT NULL,
    reason text,
    recycle_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
