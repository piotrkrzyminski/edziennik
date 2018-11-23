-- Standardowe hasło dla użytkowników: qwerty

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

INSERT INTO Roles (`id`, `name`) VALUES (1, 'ADMIN');
INSERT INTO Roles (`id`, `name`) VALUES (2, 'TEACHER');
INSERT INTO Roles (`id`, `name`) VALUES (3, 'STUDENT');
INSERT INTO Roles (`id`, `name`) VALUES (4, 'PARENT');

INSERT INTO Administrators (`id`, `email`, `password`,`enabled`, `role_id`) VALUES (1, 'admin@dziennik.pl', '$2a$04$upfx5f.u7zQEEu2eE3/aEu30KMlaNBd8pwwXx6UalY3nMYlJwgL7O', true, 1);
-- hasło: nimda

-- SAMPLE TEACHERS START
-- basic user data
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
              VALUES(1, 'czeslawa.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czesława', null, 'Nowicka', '56070207302', PARSEDATETIME('02/07/1956','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(2, 'anastazy.kaminski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Anastazy', null, 'Kamiński', '51081171572', PARSEDATETIME('11/08/1951','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(3, 'janek.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Janek', null, 'Zając', '61122779751', PARSEDATETIME('27/12/1961','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(4, 'walery.nowakowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Walery', null, 'Nowakowski', '57072091113', PARSEDATETIME('20/08/1957','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(5, 'przemysł.pawłowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Przemysł', null, 'Pawłowski', '75082101712', PARSEDATETIME('21/08/1975','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(6, 'czesława.adamska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czesława', null, 'Adamska', '71102393286', PARSEDATETIME('23/10/1971','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(7, 'eligia.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eligia', null, 'Sobczak', '74021624028', PARSEDATETIME('16/02/1974','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(8, 'weronika.grabowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Weronika', null, 'Grabowska', '65121853700', PARSEDATETIME('18/12/1965','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(9, 'radomiła.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Radomiła', null, 'Piotrowska', '97011428842', PARSEDATETIME('14/01/1997','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(10, 'izydor.dąbrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Izydor', null, 'Dąbrowski', '63010619031', PARSEDATETIME('06/01/1963','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(11, 'tadeusz.walczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tadeusz', null, 'Walczak', '64101516558', PARSEDATETIME('15/10/1964','dd/mm/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(12, 'justyna.czarnecka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Justyna', null, 'Czarnecka', '83072471985', PARSEDATETIME('24/07/1983','dd/mm/yyyy'), 2);
-- SAMPLE TEACHERS END

-- SAMPLE CLASSES START
INSERT INTO Classes (`id`, `name`, `teacher_id`) VALUES (1, 'Ia', 1);
INSERT INTO Classes (`id`, `name`, `teacher_id`) VALUES (2, 'IIb', 2);
INSERT INTO Classes (`id`, `name`, `teacher_id`) VALUES (3, 'IIId', 3);
-- SAMPLE CLASSES END

-- SAMPLE STUDENTS START
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(1, 'kacper.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Borkowski', '07292432759', PARSEDATETIME('24/09/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(2, 'cezar.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cezar', null, 'Jabłoński', '07270967314', PARSEDATETIME('09/07/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(3, 'roksana.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Roksana', null, 'Piotrowska', '07292356509', PARSEDATETIME('23/09/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(4, 'drugi.wieczorek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Drugi', null, 'Wieczorek', '07301912098', PARSEDATETIME('19/10/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(5, 'jacek.dudek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacek', null, 'Dudek', '07272220871', PARSEDATETIME('22/07/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(6, 'judyta.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Michalska', '07271094286', PARSEDATETIME('10/07/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(7, 'maryla.zając@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Maryla', null, 'Zając', '07211981980', PARSEDATETIME('19/01/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(8, 'józef.dąbrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Józef', null, 'Dąbrowski', '07262734315', PARSEDATETIME('27/06/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(9, 'michalina.chmielewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Michalina', null, 'Chmielewska', '07261373081', PARSEDATETIME('13/06/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(10, 'jarosław.rutkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarosław', null, 'Rutkowski', '07242693078', PARSEDATETIME('26/04/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(11, 'henryk.symanski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Henryk', null, 'Symanski', '07251602010', PARSEDATETIME('16/05/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(12, 'krystiana.pawłowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Krystiana', null, 'Pawłowska', '07281882981', PARSEDATETIME('18/08/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(13, 'cyryl.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cyryl', null, 'Sobczak', '07291611238', PARSEDATETIME('16/09/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(14, 'michalina.kowalczyk@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Michalina', null, 'Kowalczyk', '07262826700', PARSEDATETIME('28/06/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(15, 'angelika.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Michalska', '07212248039', PARSEDATETIME('22/01/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(16, 'sylwia.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwia', null, 'Piotrowska', '07280323508', PARSEDATETIME('03/08/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(17, 'borys.woźniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Borys', null, 'Woźniak', '07262225516', PARSEDATETIME('22/06/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(18, 'fryderyk.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Fryderyk', null, 'Michalski', '07310450293', PARSEDATETIME('04/11/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(19, 'judyta.wysocka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Wysocka', '07261575704', PARSEDATETIME('15/06/2007','dd/mm/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(20, 'tomasz.majewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tomasz', null, 'Majewski', '07232178712', PARSEDATETIME('21/23/2007','dd/mm/yyyy'), 1, 3);

INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(21, 'gabrysia.kowalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Gabrysia', null, 'Kowalska', '06240898744', PARSEDATETIME('08/04/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(22, 'łucja.woźniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Łucja', null, 'Woźniak', '06281144466', PARSEDATETIME('11/08/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(23, 'natasza.sokołowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Natasza', null, 'Sokołowska', '06222590260', PARSEDATETIME('25/02/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(24, 'wojtek.kalinowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wojtek', null, 'Kalinowski', '06250515839', PARSEDATETIME('05/05/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(25, 'hendrych.kowalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hendrych', null, 'Kowalski', '06310658632', PARSEDATETIME('06/11/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(26, 'lesława.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Lesława', null, 'Nowicka', '06220209041', PARSEDATETIME('02/02/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(27, 'katarzyna.gorska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Katarzyna', null, 'Gorska', '06272099825', PARSEDATETIME('20/07/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(28, 'angelika.grabowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Grabowska', '06261025028', PARSEDATETIME('10/06/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(29, 'cecylia.sokołowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cecylia', null, 'Sokołowska', '06312129569', PARSEDATETIME('21/11/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(30, 'maurycy.pawłowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Maurycy', null, 'Pawłowski', '06230837959', PARSEDATETIME('08/03/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(31, 'jarogniew.piotrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarogniew', null, 'Piotrowski', '06311510719', PARSEDATETIME('15/11/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(32, 'wincenty.czerwinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wincenty', null, 'Czerwinski', '06260935230', PARSEDATETIME('09/06/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(33, 'serafina.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Serafina', null, 'Nowicka', '06242687102', PARSEDATETIME('26/04/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(34, 'lubomir.pawłowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Lubomir', null, 'Pawłowski', '06272483176', PARSEDATETIME('24/07/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(35, 'aniela.wiśniewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Aniela', null, 'Wiśniewska', '06302020647', PARSEDATETIME('02/10/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(36, 'dobrosława.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwia', null, 'Piotrowska', '06252341685', PARSEDATETIME('23/05/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(37, 'ania.tomaszewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ania', null, 'Tomaszewska', '06260737085', PARSEDATETIME('07/06/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(38, 'zachariasz.kaczmarek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zachariasz', null, 'Kaczmarek', '06262020275', PARSEDATETIME('20/06/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(39, 'józefa.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Józefa', null, 'Zawadzka', '06300159521', PARSEDATETIME('01/10/2006','dd/mm/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(40, 'hieronim.olszewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hieronim', null, 'Olszewski', '06281169177', PARSEDATETIME('11/08/2006','dd/mm/yyyy'), 2, 3);

INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(41, 'eustachy.jasiński@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eustachy', null, 'Jasiński', '05220484573', PARSEDATETIME('04/02/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(42, 'wisław.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wisław', null, 'Michalski', '05260488779', PARSEDATETIME('04/06/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(43, 'karina.czerwinska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Karina', null, 'Czerwinska', '05210497608', PARSEDATETIME('04/01/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(44, 'klemens.kucharski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Klemens', null, 'Kucharski', '05261973256', PARSEDATETIME('19/06/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(45, 'jarek.kwiatkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarek', null, 'Kwiatkowski', '05230334039', PARSEDATETIME('03/03/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(46, 'łukasz.kamiński@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Łukasz', null, 'Kamiński', '05272129893', PARSEDATETIME('21/07/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(47, 'zosia.kozłowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zosia', null, 'Kozłowska', '05302017989', PARSEDATETIME('20/03/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(48, 'antoni.wojciechowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Antoni', null, 'Wojciechowski', '05302693073', PARSEDATETIME('26/10/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(49, 'angelika.gorska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Gorska', '05211351343', PARSEDATETIME('13/01/2005','dd/mm/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(50, 'czcibor.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czcibor', null, 'Borkowski', '05221978752', PARSEDATETIME('19/02/2005','dd/mm/yyyy'), 3, 3);
-- SAMPLE STUDENTS END

-- SAMPLE PARENTS START
-- TODO: Dodanie rodziców dla każdego z uczniów (kilka przypadków, gdy rodziców przypisanych do ucznia jest dwóch
INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(1, 'miłosław.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miłosław', null, 'Borkowski', '88100990179', PARSEDATETIME('09/10/1988','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (1,1);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(2, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (2,2);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(3, 'kasper.jasinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Jasiński', '88189790179', PARSEDATETIME('17/10/1972','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (3,3);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(4, 'wojciech.dabrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wojciech', null, 'Dąbrowski', '532555600', PARSEDATETIME('23/09/1974','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (4,4);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(5, 'tekla.maciejewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tekla', null, 'Maciejewska', '675177353', PARSEDATETIME('19/10/1968','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (5,5);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(6, 'radomila.kwiatkowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Radomiła', null, 'Kwiatkowska', '886267881', PARSEDATETIME('22/02/1980','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (6,6);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(7, 'jacenty.adamski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacenty', 'Maria', 'Adamski', '608850082', PARSEDATETIME('09/01/1965','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (7,7);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(8, 'albina.wisniewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Albina', null, 'Wiśniewska', '889043114', PARSEDATETIME('06/12/1988','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (8,8);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(9, 'miłosław.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miłosław', null, 'Borkowski', '88100990179', PARSEDATETIME('09/10/1988','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (9,9);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(10, 'karolina.chmielewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Karolina', 'Agnieszka', 'Chmielewska', '533539885', PARSEDATETIME('14/05/1990','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (10,10);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(11, 'waclawa.kucharska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wacława', null, 'Kucharska', '662067416', PARSEDATETIME('09/09/1989','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (11,11);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(12, 'ludwika.wieczorek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ludwika', null, 'Wieczorek', '887239675', PARSEDATETIME('24/10/1967','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (12,12);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(13, 'bratumil.czarnecki@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Bratumił', null, 'Czarnecki', '672929095', PARSEDATETIME('26/03/1970','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (13,13);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(14, 'amadej.wisniewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Amadej', 'Ezekiel', 'Wiśniewski', '887923836', PARSEDATETIME('14/12/1965','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (14,14);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(15, 'jacek.olszewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacek', null, 'Olszewski', '888899011', PARSEDATETIME('14/02/1980','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (15,15);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(16, 'ewa.czerwinska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ewa', 'Anna', 'Czerwińska', '697912681', PARSEDATETIME('05/04/1995','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (16,16);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(17, 'sylwester.kaczmarek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwester', null, 'Kaczmarek', '798514603', PARSEDATETIME('08/07/1967','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (17,17);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(18, 'joanna.kalinowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Joanna', 'Grażyna', 'Kalinowska', '609066175', PARSEDATETIME('06/08/1973','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (18,18);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(19, 'miłosław.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miłosław', null, 'Borkowski', '88100990179', PARSEDATETIME('09/10/1988','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (19,19);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(20, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (20,20);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(21, 'ela.majewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ela', null, 'Majewska', '88100990179', PARSEDATETIME('06/06/1984','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (21,21);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(22, 'dorota.pawlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Dorota', null, 'Pawłowska', '693714803', PARSEDATETIME('29/11/1982','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (22,22);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(23, 'fryderyk.wojciechowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Fryderyk', 'Andrzej', 'Wojciechowski', '667936301', PARSEDATETIME('11/07/1973','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (23,23);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(24, 'marcin.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Marcin', null, 'Sobczak', '888238586', PARSEDATETIME('26/09/1976','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (24,24);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(25, 'mikolaj.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Mikołaj', null, 'Zając', '662262372', PARSEDATETIME('31/10/1957','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (25,25);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(26, 'ala.makota@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ala', null, 'Makota', '123456789', PARSEDATETIME('14/07/1996','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (26,26);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(27, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (27,27);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(28, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (28,28);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(29, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (29,29);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(30, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (30,30);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(31, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (31,31);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(32, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (32,32);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(33, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (33,33);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(34, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (34,34);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(35, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (35,35);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(36, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (36,36);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(37, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (37,37);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(38, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (38,38);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(39, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (39,39);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(40, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (40,40);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(41, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (41,41);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(42, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (42,42);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(43, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (43,43);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(44, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (44,44);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(45, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (45,45);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(46, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (46,46);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(47, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (47,47);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(48, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (48,48);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(49, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (49,49);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(50, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabłoński', '56092630074', PARSEDATETIME('26/09/1956','dd/mm/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (50,50);
-- SAMPLE PARENTS END

-- SAMPLE SUBJECTS START
-- TODO: Dodanie nowych przedmiotów (po jednym dla każdego nauczyciela)
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (1, 'matematyka', 1);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (2, 'język polski', 2);

-- SAMPLE SUBJECTS END

-- MEETINGS START

INSERT INTO Meetings (`id`, `title`, `date`, `start_time`, `end_time`, `teacher_id`, `subject_id`, `class_id`)
              VALUES (1, 'matematyka', PARSEDATETIME('19/11/2018','dd/mm/yyyy'), PARSEDATETIME('8:00','hh:mm'), PARSEDATETIME('8:45','hh:mm'), 1, 1, 1);

INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (1, 1, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (2, 2, false, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (3, 3, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (4, 4, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (5, 5, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (6, 6, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (7, 7, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (8, 8, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (9, 9, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (10, 10, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (11, 11, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (12, 12, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (13, 13, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (14, 14, false, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (15, 15, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (16, 16, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (17, 17, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (18, 18, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (19, 19, true, 1);
INSERT INTO Presents (`id`, `student_id`, `is_present`, `meeting_id`)
              VALUES (20, 20, true, 1);
              
-- MEETINGS END

-- GRADE SET START
-- Kartkówka z funkcji liniowych dnia 19.11.2018 w klasie Ia z matematyki przeprowadzona przez nauczyciela o ID=1
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (1, PARSEDATETIME('19/11/2018', 'dd/mm/yyyy'), 'kartkówka z funkcji liniowych', 1, 1, 1, 1);

-- TODO: Dodanie kolejnych typów ocen dla różnych przedmiotów, od różnych nauczycieli, o różnych wagach
-- GRADE SET END

-- GRADES START
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (1, 1, 1, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (2, 3, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (3, 4, 1, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (4, 5, 1, 9);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (5, 6, 1, 10);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (6, 7, 1, 11);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (7, 8, 1, 11);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (8, 9, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (9, 10, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (10, 11, 1, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (11, 12, 1, 8);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (12, 13, 1, 7);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (13, 15, 1, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (14, 16, 1, 10);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (15, 17, 1, 11);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (16, 18, 1, 9);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (17, 19, 1, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade_value`)
            VALUES (18, 20, 1, 8);
-- GRADES END