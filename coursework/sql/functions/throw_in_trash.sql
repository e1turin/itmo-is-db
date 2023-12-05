CREATE OR REPLACE PROCEDURE throw_in_trash(comment_id integer, reason text)
LANGUAGE SQL
AS $$
    INSERT INTO "Trash"(comment_id, reason) VALUES(comment_id, reason);
    UPDATE "Comments"
        SET trashed = true
        WHERE comment_id = throw_in_trash.comment_id;
$$;

/* EXAMPLE
   CALL throw_in_trash(5, 'You made a mistake when wrote there smth');
 */
