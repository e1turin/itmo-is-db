/* add_role before */
with rs as (
	insert into "Reaction_sets" (reactions)
	values (DEFAULT)
	returning r_set_id as id
), rl as (
    select role_id as id
    from "Roles"
    where name = 'loh'
),  u as (
	insert into "Users" (username, isu_id, role_id, password)
	select 'kek', 335046, rl.id, 'kek'
    from rl
	returning user_id as id
)
insert into "Comments" (content, user_id, reactions_id)
	select 'Some interesting content', u.id, rs.id
	from rs, u;

with rl as (
    select role_id as id
    from "Roles"
    where name = 'loh'
),  u as (
insert into "Users" (username, isu_id, role_id, password)
select 'kek', 335046, rl.id, 'kek'
from rl
         returning user_id as id
)
insert into "Comments" (content, user_id)
select 'Some interesting content', u.id
from u;