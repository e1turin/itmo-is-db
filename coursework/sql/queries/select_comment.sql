SELECT * FROM "Comments"
    LEFT JOIN "Reaction_sets" ON "Comments".reactions_id = "Reaction_sets".r_set_id
    WHERE "Comments".comment_id = 7;