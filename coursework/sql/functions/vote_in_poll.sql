CREATE OR REPLACE PROCEDURE vote_in_poll(user_id integer, poll_id integer, answer_ids integer[])
AS $$
    DECLARE
        answer int;
    BEGIN
        FOREACH answer IN ARRAY answer_ids
        LOOP
            UPDATE "Poll_answers"
                SET votes_number = votes_number + 1
                WHERE poll_answer_id = answer AND poll_id = vote_in_poll.poll_id;
        END LOOP;
    INSERT INTO "Voted_users"(poll_id, user_id) VALUES(poll_id, user_id);
    END;
$$ LANGUAGE PLPGSQL;

/* EXAMPLE
   CALL vote_in_poll(5, 2, array[1,2]);
 */