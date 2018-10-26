INSERT INTO Users (`id`, `email`, `password`,`enabled`) VALUES (1, 'admin@dziennik.pl', '$2a$04$upfx5f.u7zQEEu2eE3/aEu30KMlaNBd8pwwXx6UalY3nMYlJwgL7O', true);

INSERT INTO Users (`id`, `email`, `password`,`enabled`) VALUES (2, 'jan.kowalski@dziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true);

INSERT INTO Roles (`id`, `name`) VALUES (1, 'ADMIN');
INSERT INTO Roles (`id`, `name`) VALUES (2, 'TEACHER');
INSERT INTO Roles (`id`, `name`) VALUES (3, 'STUDENT');
INSERT INTO Roles (`id`, `name`) VALUES (4, 'PARENT');

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (1,1);
INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES (2,3);