CREATE TABLE Users (
    user_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username varchar(255) NOT NULL,
    isu_id integer NOT NULL,
    role_id varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    CONSTRAINT "role_id_fk" 
    FOREIGN KEY (role_id)
        REFERENCES Roles (role_id)
        ON DELETE RESTRICT,
);