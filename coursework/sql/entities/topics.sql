CREATE TABLE Topics (
    topic_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL,
    description text
);
