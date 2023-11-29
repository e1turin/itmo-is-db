CREATE TABLE "Reaction_sets" (
    r_set_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    reactions jsonb NOT NULL DEFAULT '{}'::jsonb
);
