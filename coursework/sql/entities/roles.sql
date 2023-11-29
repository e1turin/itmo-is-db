CREATE TABLE "Roles" (
    role_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL UNIQUE,
    description text NOT NULL
);