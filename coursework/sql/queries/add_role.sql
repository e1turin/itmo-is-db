insert into "Roles" (name, description)
values ('loh', 'lohlohlohloh lohlohloh')
returning role_id;

insert into "Roles" (name, description)
values ('admin', 'The coolest role ever')
returning role_id;

insert into "Roles" (name, description)
values ('moderator', 'Provides moderating comments')
returning role_id;

insert into "Roles" (name, description)
values ('guest', 'Guest role')
returning role_id;