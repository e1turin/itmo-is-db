CREATE OR REPLACE FUNCTION create_reaction_set_for_comment()
RETURNS TRIGGER
AS
$$
    DECLARE
    r_id integer := 0;
    BEGIN
        IF (NEW.reactions_id IS NULL) THEN
            with tempa as (
                INSERT INTO "Reaction_sets"
                    DEFAULT VALUES
                    RETURNING r_set_id as id
            )
            SELECT SUM(tempa.id) INTO r_id
            FROM tempa;
           UPDATE "Comments"
                SET reactions_id = r_id
                where comment_id = NEW.comment_id;
        END IF;
    RETURN NEW;
    END
$$ LANGUAGE PLPGSQL;

CREATE TRIGGER after_inserting_comment
    AFTER INSERT ON "Comments"
    FOR EACH ROW EXECUTE PROCEDURE create_reaction_set_for_comment();