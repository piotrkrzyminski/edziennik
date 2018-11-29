-- Standardowe hasło dla użytkowników: qwerty


INSERT INTO Roles (`id`, `name`) VALUES (1, 'ADMIN');
INSERT INTO Roles (`id`, `name`) VALUES (2, 'TEACHER');
INSERT INTO Roles (`id`, `name`) VALUES (3, 'STUDENT');
INSERT INTO Roles (`id`, `name`) VALUES (4, 'PARENT');

INSERT INTO Administrators (`id`, `email`, `password`,`enabled`, `role_id`)
                      VALUES (1, 'admin@dziennik.pl', '$2a$04$upfx5f.u7zQEEu2eE3/aEu30KMlaNBd8pwwXx6UalY3nMYlJwgL7O', true, 1);
-- hasło: nimda

-- SAMPLE TEACHERS START
-- basic user data
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
              VALUES(2, 'czeslawa.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czesława', null, 'Nowicka', '56070207302', PARSEDATETIME('02/07/1956','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(3, 'anastazy.kaminski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Anastazy', null, 'Kamiński', '51081171572', PARSEDATETIME('11/08/1951','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(4, 'janek.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Janek', null, 'Zając', '61122779751', PARSEDATETIME('27/12/1961','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(5, 'walery.nowakowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Walery', null, 'Nowakowski', '57072091113', PARSEDATETIME('20/08/1957','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(6, 'przemysł.pawłowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Przemysł', null, 'Pawłowski', '75082101712', PARSEDATETIME('21/08/1975','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(7, 'czesława.adamska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czesława', null, 'Adamska', '71102393286', PARSEDATETIME('23/10/1971','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(8, 'eligia.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eligia', null, 'Sobczak', '74021624028', PARSEDATETIME('16/02/1974','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(9, 'weronika.grabowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Weronika', null, 'Grabowska', '65121853700', PARSEDATETIME('18/12/1985','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(10, 'radomiła.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Radomiła', null, 'Piotrowska', '97011428842', PARSEDATETIME('14/01/1997','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(11, 'izydor.dąbrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Izydor', null, 'Dąbrowski', '63010619031', PARSEDATETIME('06/01/1963','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(12, 'tadeusz.walczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tadeusz', null, 'Walczak', '64101516558', PARSEDATETIME('15/10/1964','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(13, 'justyna.czarnecka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Justyna', null, 'Czarnecka', '83072471985', PARSEDATETIME('24/07/1983','dd/MM/yyyy'), 2);
-- SAMPLE TEACHERS END

-- SAMPLE CLASSES START
INSERT INTO Classes (`id`, `name`, `teacher_id`) VALUES (1, 'Ia', 2);
INSERT INTO Classes (`id`, `name`, `teacher_id`) VALUES (2, 'IIb', 3);
INSERT INTO Classes (`id`, `name`, `teacher_id`) VALUES (3, 'IIId', 4);
-- SAMPLE CLASSES END

-- SAMPLE STUDENTS START
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(14, 'kacper.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Borkowski', '07292432759', PARSEDATETIME('24/09/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(15, 'cezar.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cezar', null, 'Jabłoński', '07270967314', PARSEDATETIME('09/07/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(16, 'roksana.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Roksana', null, 'Piotrowska', '07292356509', PARSEDATETIME('23/09/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(17, 'drugi.wieczorek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Drugi', null, 'Wieczorek', '07301912098', PARSEDATETIME('19/10/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(18, 'jacek.dudek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacek', null, 'Dudek', '07272220871', PARSEDATETIME('22/07/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(19, 'judyta.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Michalska', '07271094286', PARSEDATETIME('10/07/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(20, 'maryla.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Maryla', null, 'Zając', '07211981980', PARSEDATETIME('19/01/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(21, 'józef.dabrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Józef', null, 'Dąbrowski', '07262734315', PARSEDATETIME('27/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(22, 'michalina.chmielewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Michalina', null, 'Chmielewska', '07261373081', PARSEDATETIME('13/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(23, 'jarosław.rutkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarosław', null, 'Rutkowski', '07242693078', PARSEDATETIME('26/04/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(24, 'henryk.symanski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Henryk', null, 'Symanski', '07251602010', PARSEDATETIME('16/05/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(25, 'krystiana.pawlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Krystiana', null, 'Pawłowska', '07281882981', PARSEDATETIME('18/08/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(26, 'cyryl.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cyryl', null, 'Sobczak', '07291611238', PARSEDATETIME('16/09/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(27, 'michalina.kowalczyk@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Michalina', null, 'Kowalczyk', '07262826700', PARSEDATETIME('28/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(28, 'angelika.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Michalska', '07212248039', PARSEDATETIME('22/01/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(29, 'sylwia.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwia', null, 'Piotrowska', '07280323508', PARSEDATETIME('03/08/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(30, 'borys.wozniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Borys', null, 'Woźniak', '07262225516', PARSEDATETIME('22/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(31, 'fryderyk.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Fryderyk', null, 'Michalski', '07310450293', PARSEDATETIME('04/11/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(32, 'judyta.wysocka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Wysocka', '07261575704', PARSEDATETIME('15/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(33, 'tomasz.majewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tomasz', null, 'Majewski', '07232178712', PARSEDATETIME('21/23/2007','dd/MM/yyyy'), 1, 3);

INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(34, 'gabrysia.kowalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Gabrysia', null, 'Kowalska', '06240898744', PARSEDATETIME('08/04/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(35, 'łucja.wozniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Łucja', null, 'Woźniak', '06281144466', PARSEDATETIME('11/08/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(36, 'natasza.sokolowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Natasza', null, 'Sokołowska', '06222590260', PARSEDATETIME('25/02/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(37, 'wojtek.kalinowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wojtek', null, 'Kalinowski', '06250515839', PARSEDATETIME('05/05/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(38, 'hendrych.kowalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hendrych', null, 'Kowalski', '06310658632', PARSEDATETIME('06/11/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(39, 'leslawa.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Lesława', null, 'Nowicka', '06220209041', PARSEDATETIME('02/02/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(40, 'katarzyna.gorska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Katarzyna', null, 'Gorska', '06272099825', PARSEDATETIME('20/07/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(41, 'angelika.grabowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Grabowska', '06261025028', PARSEDATETIME('10/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(42, 'cecylia.sokolowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cecylia', null, 'Sokołowska', '06312129569', PARSEDATETIME('21/11/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(43, 'maurycy.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Maurycy', null, 'Pawłowski', '06230837959', PARSEDATETIME('08/03/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(44, 'jarogniew.piotrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarogniew', null, 'Piotrowski', '06311510719', PARSEDATETIME('15/11/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(45, 'wincenty.czerwinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wincenty', null, 'Czerwinski', '06260935230', PARSEDATETIME('09/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(46, 'serafina.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Serafina', null, 'Nowicka', '06242687102', PARSEDATETIME('26/04/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(47, 'lubomir.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Lubomir', null, 'Pawłowski', '06272483176', PARSEDATETIME('24/07/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(48, 'aniela.wisniewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Aniela', null, 'Wiśniewska', '06302020647', PARSEDATETIME('02/10/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(49, 'dobroslawa.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwia', null, 'Piotrowska', '06252341685', PARSEDATETIME('23/05/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(50, 'ania.tomaszewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ania', null, 'Tomaszewska', '06260737085', PARSEDATETIME('07/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(51, 'zachariasz.kaczmarek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zachariasz', null, 'Kaczmarek', '06262020275', PARSEDATETIME('20/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(52, 'jozefa.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Józefa', null, 'Zawadzka', '06300159521', PARSEDATETIME('01/10/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(53, 'hieronim.olszewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hieronim', null, 'Olszewski', '06281169177', PARSEDATETIME('11/08/2006','dd/MM/yyyy'), 2, 3);

INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(54, 'eustachy.jasinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eustachy', null, 'Jasiński', '05220484573', PARSEDATETIME('04/02/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(55, 'wieslaw.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wisław', null, 'Michalski', '05260488779', PARSEDATETIME('04/06/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(56, 'karina.czerwinska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Karina', null, 'Czerwinska', '05210497608', PARSEDATETIME('04/01/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(57, 'klemens.kucharski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Klemens', null, 'Kucharski', '05261973256', PARSEDATETIME('19/06/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(58, 'jarek.kwiatkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarek', null, 'Kwiatkowski', '05230334039', PARSEDATETIME('03/03/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(59, 'łukasz.kaminski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Łukasz', null, 'Kamiński', '05272129893', PARSEDATETIME('21/07/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(60, 'zosia.kozlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zosia', null, 'Kozłowska', '05302017989', PARSEDATETIME('20/03/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(61, 'antoni.wojciechowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Antoni', null, 'Wojciechowski', '05302693073', PARSEDATETIME('26/10/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(62, 'angelika.gorska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Gorska', '05211351343', PARSEDATETIME('13/01/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(63, 'czcibor.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czcibor', null, 'Borkowski', '05221978752', PARSEDATETIME('19/02/2005','dd/MM/yyyy'), 3, 3);
-- SAMPLE STUDENTS END

-- SAMPLE PARENTS START
-- TODO: Dodanie rodziców dla każdego z uczniów (kilka przypadków, gdy rodziców przypisanych do ucznia jest dwóch
INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(64, 'miłosław.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miłosław', null, 'Borkowski', '88100990179', PARSEDATETIME('09/10/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (14,64);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(65, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (15,65);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(66, 'kasper.piotrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Piotrowski', '88189790179', PARSEDATETIME('17/10/1972','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (16,66);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(67, 'wojciech.wieczorek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wojciech', null, 'Wieczorek', '532555600', PARSEDATETIME('23/09/1974','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (17,67);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(68, 'tekla.dudek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tekla', null, 'Dudek', '675177353', PARSEDATETIME('19/10/1968','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (18,68);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(69, 'radomila.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Radomiła', null, 'Michalska', '886267881', PARSEDATETIME('22/02/1980','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (19,69);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(70, 'jacenty.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacenty', 'Maria', 'Zając', '608850082', PARSEDATETIME('09/01/1965','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (20,70);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(71, 'albina.dabrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Albina', null, 'Dąbrowski', '889043114', PARSEDATETIME('06/12/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (21,71);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(72, 'miłosław.chmielewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miłosław', null, 'Chmielewski', '88100990179', PARSEDATETIME('09/10/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (22,72);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(73, 'karolina.rutkowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Karolina', 'Agnieszka', 'Rutkowska', '533539885', PARSEDATETIME('14/05/1990','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (23,73);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(74, 'waclawa.symanska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wacława', null, 'Symanska', '662067416', PARSEDATETIME('09/09/1989','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (24,74);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(75, 'ludwika.pawlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ludwika', null, 'Pawłowska', '887239675', PARSEDATETIME('24/10/1967','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (25,75);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(76, 'bratumil.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Bratumił', null, 'Sobczak', '672929095', PARSEDATETIME('26/03/1970','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (26,76);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(77, 'amadej.kowalczyk@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Amadej', 'Ezekiel', 'Kowalczyk', '887923836', PARSEDATETIME('14/12/1965','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (27,77);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(78, 'jacek.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacek', null, 'Michalski', '888899011', PARSEDATETIME('14/02/1980','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (28,78);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(79, 'ewa.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ewa', 'Anna', 'Piotrowska', '697912681', PARSEDATETIME('05/04/1995','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (29,79);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(80, 'sylwester.wozniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwester', null, 'Woźniak', '798514603', PARSEDATETIME('08/07/1967','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (30,80);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(81, 'joanna.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Joanna', 'Grażyna', 'Michalska', '609066175', PARSEDATETIME('06/08/1973','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (31,81);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(82, 'seweryna.wysocka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Seweryna', null, 'Wysocka', '695555022', PARSEDATETIME('21/04/1975','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (32,82);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(83, 'klimek.majewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Klimek', null, 'Majewski', '672137913', PARSEDATETIME('28/07/1984','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (33,83);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(84, 'malwina.kowalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Malwina', null, 'Kowalska', '756608685', PARSEDATETIME('06/04/1968','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (34,84);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(85, 'jedrzej.wozniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jędrzej', null, 'Woźniak', '667472111', PARSEDATETIME('11/05/1985','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (35,85);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(86, 'judyta.sokolowksa@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Sokołowska', '609093201', PARSEDATETIME('21/01/1989','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (36,86);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(87, 'dobromil.kalinowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Dobromił', null, 'Kalinowski', '661074924', PARSEDATETIME('08/01/1973','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (37,87);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(88, 'malgorzata.kowalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Małgorzata', null, 'Kowalska', '729167141', PARSEDATETIME('17/01/1961','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (38,88);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(89, 'jaroslaw.nowicki@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarosław', null, 'Nowicki', '671065558', PARSEDATETIME('01/05/1979','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (39,89);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(90, 'zygmunt.gorski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zygmunt', null, 'Górski', '673069397', PARSEDATETIME('01/09/1972','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (40,90);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(91, 'jurek.grabowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jurek', null, 'Grabowski', '694817460', PARSEDATETIME('06/06/1969','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (41,91);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(92, 'wladyslawa.sokolowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Władysława', 'Julita', 'Sokołowska', '789126146', PARSEDATETIME('31/07/1979','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (42,92);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(93, 'bartosz.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Bartosz', 'Sławomir', 'Pawłowski', '679337123', PARSEDATETIME('27/06/1963','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (43,93);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(94, 'natalia.piotrkowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Natalia', null, 'Piotrowska', '666567376', PARSEDATETIME('08/10/1977','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (44,94);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(95, 'kacper.czerwinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Czerwiński', '516256071', PARSEDATETIME('29/05/1985','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (45,95);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(96, 'lew.nowicki@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Lew', 'Alojzy', 'Nowicki', '605025946', PARSEDATETIME('30/05/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (46,96);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(97, 'frydryk.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Frydryk', null, 'Pawłowski', '539102787', PARSEDATETIME('04/09/1954','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (47,97);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(98, 'zygmunt.wisniewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zygmunt', null, 'Wiśniewski', '697966003', PARSEDATETIME('22/04/1980','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (48,98);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(99, 'barbara.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Barbara', 'Genowefa', 'Zawadzka', '516459008', PARSEDATETIME('13/09/1990','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (49,99);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(100, 'weronika.tomaszewskia@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Weronika', null, 'Tomaszewska', '793611968', PARSEDATETIME('28/08/1979','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (50, 100);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(101, 'bogumil.kaczmarek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Bogumił', null, 'Kaczmarek', '781044891', PARSEDATETIME('24/01/1969','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (51,101);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(102, 'daria.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Daria', null, 'Zawadzka', '605408726', PARSEDATETIME('26/01/1970','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (52,102);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(103, 'milena.olszewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Milena', null, 'Olszewska', '532606711', PARSEDATETIME('07/10/1976','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (53,103);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(104, 'esmeralda.jasinska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Esmeralda', null, 'Jasińska', '888252001', PARSEDATETIME('24/02/1981','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (54,104);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(105, 'brian.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Brian', null, 'Michalski', '886513127', PARSEDATETIME('14/05/1998','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (55,105);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(106, 'jakub.czerwinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jakub', null, 'Czerwiński', '535831334', PARSEDATETIME('10/08/1975','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (56,106);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(107, 'ogla.kucharska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Olga', null, 'Kucharska', '725369800', PARSEDATETIME('22/02/1969','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (57,107);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(108, 'justyna.kwiatkowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Justyna', null, 'Kwiatkowska', '784690941', PARSEDATETIME('08/11/1978','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (58,108);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(109, 'krzysztof.kaminski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Krzysztof', null, 'Kamiński', '783062069', PARSEDATETIME('09/08/1975','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (59,109);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(110, 'arkadiusz.kozlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Arkadiusz', null, 'Kozłowski', '666258743', PARSEDATETIME('29/11/1982','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (60,110);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(111, 'ignacy.wojciechowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ignacy', 'Alojzy', 'Wojciechowski', '536572457', PARSEDATETIME('13/03/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (61,111);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(112, 'antoni.gorski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Antoni', null, 'Górski', '884814687', PARSEDATETIME('30/01/1980','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (62,112);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(113, 'zofia.borowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zofia', null, 'Borowska', '537601402', PARSEDATETIME('02/11/1990','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (63,113);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(114, 'eryk.sokolowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eryk', null, 'Sokołowski', '609093202', PARSEDATETIME('21/12/1987','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (36,114);
-- SAMPLE PARENTS END

-- SAMPLE SUBJECTS START
-- TODO: Dodanie nowych przedmiotów (po jednym dla każdego nauczyciela)
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (1, 'matematyka', 2);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (2, 'język polski', 3);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (3, 'język angielski', 4);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (4, 'wychowanie fizyczne', 5);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (5, 'religia', 6);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (6, 'historia', 7);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (7, 'przyroda', 8);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (8, 'fizyka', 9);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (9, 'informatyka', 10);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (10, 'chemia', 11);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (11, 'geografia', 12);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (12, 'podstawy przedsiębiorczości', 13);

-- SAMPLE SUBJECTS END

-- MEETINGS START

INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (1, 'matematyka', PARSEDATETIME('19/11/2018','dd/MM/yyyy'), PARSEDATETIME('8:00','hh:mm'), PARSEDATETIME('8:45','hh:mm'), 2, 1, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (2, 'język polski', PARSEDATETIME('19/11/2018','dd/MM/yyyy'), PARSEDATETIME('9:00','hh:mm'), PARSEDATETIME('9:45','hh:mm'), 3, 2, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (3, 'język angielski', PARSEDATETIME('19/11/2018','dd/MM/yyyy'), PARSEDATETIME('10:00','hh:mm'), PARSEDATETIME('10:45','hh:mm'), 4, 3, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (4, 'wychowanie fizyczne', PARSEDATETIME('19/11/2018','dd/MM/yyyy'), PARSEDATETIME('11:00','hh:mm'), PARSEDATETIME('11:45','hh:mm'), 5, 4, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (5, 'religia', PARSEDATETIME('19/11/2018','dd/MM/yyyy'), PARSEDATETIME('12:00','hh:mm'), PARSEDATETIME('12:45','hh:mm'), 6, 5, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (6, 'matematyka', PARSEDATETIME('19/11/2018','dd/MM/yyyy'), PARSEDATETIME('13:00','hh:mm'), PARSEDATETIME('13:45','hh:mm'), 2, 1, 1);

INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (7, 'historia', PARSEDATETIME('20/11/2018','dd/MM/yyyy'), PARSEDATETIME('8:00','hh:mm'), PARSEDATETIME('8:45','hh:mm'), 7, 6, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (8, 'język polski', PARSEDATETIME('20/11/2018','dd/MM/yyyy'), PARSEDATETIME('9:00','hh:mm'), PARSEDATETIME('9:45','hh:mm'), 3, 2, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (9, 'religia', PARSEDATETIME('20/11/2018','dd/MM/yyyy'), PARSEDATETIME('10:00','hh:mm'), PARSEDATETIME('10:45','hh:mm'), 6, 5, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (10, 'przyroda', PARSEDATETIME('20/11/2018','dd/MM/yyyy'), PARSEDATETIME('11:00','hh:mm'), PARSEDATETIME('11:45','hh:mm'), 8, 7, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (11, 'fizyka', PARSEDATETIME('20/11/2018','dd/MM/yyyy'), PARSEDATETIME('12:00','hh:mm'), PARSEDATETIME('12:45','hh:mm'), 9, 8, 1);

INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (12, 'język polski', PARSEDATETIME('21/11/2018','dd/MM/yyyy'), PARSEDATETIME('8:00','hh:mm'), PARSEDATETIME('8:45','hh:mm'), 3, 2, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (13, 'wychowanie fizyczne', PARSEDATETIME('21/11/2018','dd/MM/yyyy'), PARSEDATETIME('11:00','hh:mm'), PARSEDATETIME('11:45','hh:mm'), 5, 4, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (14, 'wychowanie fizyczne', PARSEDATETIME('21/11/2018','dd/MM/yyyy'), PARSEDATETIME('12:00','hh:mm'), PARSEDATETIME('12:45','hh:mm'), 5, 4, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (15, 'matematyka', PARSEDATETIME('21/11/2018','dd/MM/yyyy'), PARSEDATETIME('13:00','hh:mm'), PARSEDATETIME('13:45','hh:mm'), 2, 1, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (16, 'historia', PARSEDATETIME('21/11/2018','dd/MM/yyyy'), PARSEDATETIME('14:00','hh:mm'), PARSEDATETIME('14:45','hh:mm'), 7, 6, 1);

INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (17, 'język polski', PARSEDATETIME('22/11/2018','dd/MM/yyyy'), PARSEDATETIME('8:00','hh:mm'), PARSEDATETIME('8:45','hh:mm'), 3, 2, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (18, 'język polski', PARSEDATETIME('22/11/2018','dd/MM/yyyy'), PARSEDATETIME('9:00','hh:mm'), PARSEDATETIME('9:45','hh:mm'), 3, 2, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (19, 'matematyka', PARSEDATETIME('22/11/2018','dd/MM/yyyy'), PARSEDATETIME('10:00','hh:mm'), PARSEDATETIME('10:45','hh:mm'), 2, 1, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (20, 'przyroda', PARSEDATETIME('22/11/2018','dd/MM/yyyy'), PARSEDATETIME('11:00','hh:mm'), PARSEDATETIME('11:45','hh:mm'), 8, 7, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (21, 'religia', PARSEDATETIME('22/11/2018','dd/MM/yyyy'), PARSEDATETIME('12:00','hh:mm'), PARSEDATETIME('12:45','hh:mm'), 6, 5, 1);

INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (22, 'matematyka', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('8:00','hh:mm'), PARSEDATETIME('8:45','hh:mm'), 2, 1, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (23, 'matematyka', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('9:00','hh:mm'), PARSEDATETIME('9:45','hh:mm'), 2, 1, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (24, 'język angielski', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('10:00','hh:mm'), PARSEDATETIME('10:45','hh:mm'), 4, 3, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (25, 'język angielski', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('11:00','hh:mm'), PARSEDATETIME('11:45','hh:mm'), 4, 3, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (26, 'historia', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('12:00','hh:mm'), PARSEDATETIME('12:45','hh:mm'), 7, 6, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (27, 'wychowanie fizyczne', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('13:00','hh:mm'), PARSEDATETIME('13:45','hh:mm'), 5, 4, 1);
INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (28, 'przyroda', PARSEDATETIME('23/11/2018','dd/MM/yyyy'), PARSEDATETIME('14:00','hh:mm'), PARSEDATETIME('14:45','hh:mm'), 8, 7, 1);
-- MEETINGS END

INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (1, 14, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (2, 15, false, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (3, 16, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (4, 17, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (5, 18, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (6, 19, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (7, 20, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (8, 21, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (9, 22, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (10, 23, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (11, 24, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (12, 25, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (13, 26, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (14, 27, false, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (15, 28, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (16, 29, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (17, 30, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (18, 31, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (19, 32, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (20, 33, true, 1);
              
-- MEETINGS END

-- GRADE VALUES START
INSERT INTO Grade_values (`id`, `name`) VALUES (1, 1);
INSERT INTO Grade_values (`id`, `name`) VALUES (2, 1.5);
INSERT INTO Grade_values (`id`, `name`) VALUES (3, 2);
INSERT INTO Grade_values (`id`, `name`) VALUES (4, 2.5);
INSERT INTO Grade_values (`id`, `name`) VALUES (5, 3);
INSERT INTO Grade_values (`id`, `name`) VALUES (6, 3.5);
INSERT INTO Grade_values (`id`, `name`) VALUES (7, 4);
INSERT INTO Grade_values (`id`, `name`) VALUES (8, 4.5);
INSERT INTO Grade_values (`id`, `name`) VALUES (9, 5);
INSERT INTO Grade_values (`id`, `name`) VALUES (10, 5.5);
INSERT INTO Grade_values (`id`, `name`) VALUES (11, 6);
-- GRADE VALUES END

-- GRADE SET START
-- Kartkówka z funkcji liniowych dnia 19.11.2018 w klasie Ia z matematyki przeprowadzona przez nauczyciela o ID=1
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (1, PARSEDATETIME('19/11/2018', 'dd/MM/yyyy'), 'kartkówka z funkcji liniowych', 1, 1, 1, 2);

-- TODO: Dodanie kolejnych typów ocen dla różnych przedmiotów, od różnych nauczycieli, o różnych wagach
-- GRADE SET END

-- GRADES START
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (1, 14, 1, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (2, 16, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (3, 17, 1, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (4, 18, 1, 9);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (5, 19, 1, 10);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (6, 20, 1, 11);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (7, 21, 1, 11);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (8, 22, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (9, 23, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (10, 24, 1, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (11, 25, 1, 8);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (12, 26, 1, 7);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (13, 28, 1, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (14, 29, 1, 10);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (15, 30, 1, 11);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (16, 31, 1, 9);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (17, 32, 1, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (18, 33, 1, 8);
-- GRADES END