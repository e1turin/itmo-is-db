-- MANY TO MANY (
CREATE TABLE foods 
(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL,
    amount integer NOT NULL,
    vendor varchar(255) NOT NULL,
    cost integer NOT NULL,
    delivery_date TIMESTAMP NOT NULL
);

CREATE TABLE animals
(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL,
    genus jsonb NOT NULL default '{}'::jsonb,
    aviary_id integer,
    FOREIGN KEY (aviary_id)
        REFERENCES aviaries (id)
);

CREATE TABLE animals_foods
(
    animal_id integer NOT NULL,
    food_id integer NOT NULL,
    FOREIGN KEY (animal_id) 
        REFERENCES animals (id)
        ON DELETE CASCADE,
    FOREIGN KEY (food_id) 
        REFERENCES foods (id)
        ON DELETE CASCADE,
    PRIMARY KEY (animal_id, food_id)
);
-- ) MANY TO MANY

-- ONE TO ONE (
CREATE TABLE aviaries
(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL,
    desctiption text DEFAULT '',
    location_id integer,
    FOREIGN KEY (location_id) 
        REFERENCES locations (id)
        ON DELETE RESTRICT
);

CREATE TABLE locations
(
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL,
    desctiption text DEFAULT '',
);
-- ) ONE TO ONE