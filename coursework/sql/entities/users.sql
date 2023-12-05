CREATE TABLE "Users" (
    user_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username varchar(255) NOT NULL UNIQUE,
    isu_id integer NOT NULL UNIQUE,
    role_id integer DEFAULT NULL,
    password varchar(255) NOT NULL
);

