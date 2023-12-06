CREATE OR REPLACE PROCEDURE append_reaction_to_comment(reaction_text varchar, c_id Integer)
LANGUAGE PLPGSQL
AS $$
    DECLARE
        r_id int;
        r_cnt int;
    BEGIN
        IF length(reaction_text) < 7 THEN
            SELECT reactions_id 
            INTO r_id
            FROM "Comments" 
            WHERE "Comments".comment_id = append_reaction_to_comment.c_id;

			SELECT reactions -> reaction_text
			into r_cnt
            FROM "Reaction_sets" 
            WHERE r_set_id = r_id;

			IF r_cnt IS NULL THEN
                r_cnt := 0;
			END IF;

            UPDATE "Reaction_sets"
            SET reactions = jsonb_set(reactions, array[reaction_text], to_jsonb(r_cnt + 1), TRUE)
            WHERE r_set_id = r_id;
        END IF;
    end;
$$;

/* EXAMPLE
  call append_reaction_to_comment('tl;dr',  15) 
*/