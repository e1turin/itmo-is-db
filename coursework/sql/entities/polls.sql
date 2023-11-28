CREATE TABLE Polls (
    poll_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    comment_id integer NOT NULL,
    title varchar(255) NOT NULL
    CONSTRAINT "comment_id_fk" 
    FOREIGN KEY (comment_id)
        REFERENCES Comments (comment_id)
        ON DELETE CASCADE
);

CREATE TABLE Voted_users (
    poll_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT "poll_id_fk" 
    FOREIGN KEY (poll_id)
        REFERENCES Polls (poll_id)
        ON DELETE CASCADE,
    CONSTRAINT "user_id_fk" 
    FOREIGN KEY (user_id)
        REFERENCES Users (user_id)
        ON DELETE CASCADE,
    CONSTRAINT "voted_users_pk"
    PRIMARY KEY (poll_id, user_id)
);

CREATE TABLE Poll_answers (
    poll_answer_id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    poll_id integer NOT NULL,
    answer_title varchar(255) NOT NULL,
    votes_number integer NOT NULL DEFAULT 0,
    CONSTRAINT "poll_id_fk" 
    FOREIGN KEY (poll_id)
        REFERENCES Polls (poll_id)
        ON DELETE CASCADE
);
