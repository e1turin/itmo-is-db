/* add_role before */
insert into "Comments" (content, user_id)
select 'Lol. Some mega interesting content', u.id
from (
    select user_id as id
    from "Users"
    where username = 'lol'
) as u
returning comment_id as id