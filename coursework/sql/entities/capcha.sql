CREATE TABLE "Capcha" (
    capcha_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    answer varchar(255),
    picture_id integer NOT NULL
);
