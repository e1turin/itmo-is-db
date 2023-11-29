CREATE TABLE "Pictures" (
    picture_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255),
    file oid NOT NULL
);

CREATE TABLE "Picture_attachments" (
    comment_id integer NOT NULL,
    picture_id integer NOT NULL
);
