/* add_topic before */
with u as (
	select user_id as id
    from "Users"
	where username = 'kek'
), rs as (
	insert into "Reaction_sets" (reactions)
	values (DEFAULT)
	returning r_set_id as id
), c as (
    insert into "Comments" (content, user_id, reactions_id)
	select 'Some interesting content', u.id, rs.id
	from rs, u
    returning comment_id as id
), t as (
    select topic_id as id
    from "Topics"
    where name = 'itmo'
)
insert into "Threads" (topic_id, init_comment_id)
select t.id, c.id
from t, c;