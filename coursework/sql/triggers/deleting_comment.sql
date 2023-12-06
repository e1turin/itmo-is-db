CREATE OR REPLACE FUNCTION delete_expired_trashed_comments() RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
BEGIN
UPDATE "Comments"
    SET deleted = true
    WHERE comment_id IN
          (SELECT comment_id FROM "Trash"
           WHERE recycle_date < NOW() - INTERVAL '1 hour');
RETURN NEW;
END;
$$;

CREATE TRIGGER trash_insert_comment_trigger
    AFTER INSERT ON "Trash"
    EXECUTE PROCEDURE delete_expired_trashed_comments();
