CREATE TABLE "Videos" (
    video_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255),
    file oid NOT NULL
);

CREATE TABLE "Video_attachments" (
    comment_id integer NOT NULL,
    video_id integer NOT NULL
);
