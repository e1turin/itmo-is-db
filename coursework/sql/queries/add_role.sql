insert into "Roles" (name, description)
values 
    ('admin', 'Administrator user'),
    ('moderator', 'Moderator user'),
    ('anonimous', 'Anonimous common user')
returning role_id;