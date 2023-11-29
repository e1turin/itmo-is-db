CREATE TABLE "Polls" (
    poll_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    comment_id integer NOT NULL,
    title varchar(255) NOT NULL
);

CREATE TABLE "Voted_users" (
    poll_id integer NOT NULL,
    user_id integer NOT NULL
);

CREATE TABLE "Poll_answers" (
    poll_answer_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    poll_id integer NOT NULL,
    answer_title varchar(255) NOT NULL,
    votes_number integer NOT NULL DEFAULT 0
);
