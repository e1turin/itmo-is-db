CREATE TABLE "Users" (
    user_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username varchar(255) NOT NULL UNIQUE,
    isu_id integer NOT NULL,
    role_id integer NOT NULL, -- Default 0
    password varchar(255) NOT NULL
);
