CREATE OR REPLACE PROCEDURE throw_in_trash(comment_id integer, reason text)
LANGUAGE SQL
AS $$
    INSERT INTO Trash(comment_id, reason) VALUES(comment_id, reason);
$$;