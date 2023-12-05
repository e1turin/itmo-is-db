/* add_role before */
insert into "Comments" (content, user_id)
select 'Lol. Some mega interesting content', u.id
from (
    select user_id as id
    from "Users"
    where username = 'lol'
) as u
returning comment_id as id

insert into "Comments" (content, user_id)
VALUES ('Privet, Misha!', 7);

insert into "Comments" (content, user_id)
VALUES ('Privet, SuperHot!', 8);

insert into "Comments" (content, user_id)
VALUES ('Privet, SuperHot!', 8);

INSERT INTO "Comments" (title,content,user_id)
VALUES ('THE TOP-1 COMMENT', 'There is nothing', 6);

