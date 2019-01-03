-- Standardowe haslo dla uzytkownikow: qwerty

INSERT INTO Roles (`id`, `name`) VALUES (1, 'ADMIN');
INSERT INTO Roles (`id`, `name`) VALUES (2, 'TEACHER');
INSERT INTO Roles (`id`, `name`) VALUES (3, 'STUDENT');
INSERT INTO Roles (`id`, `name`) VALUES (4, 'PARENT');

INSERT INTO Administrators (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
                      VALUES (1, 'admin@dziennik.pl', '$2a$04$upfx5f.u7zQEEu2eE3/aEu30KMlaNBd8pwwXx6UalY3nMYlJwgL7O', true, 'Adam', null, 'Nowak', '96082873678', null, 1);
-- haslo: nimda

-- SAMPLE TEACHERS START
-- basic user data
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
              VALUES(2, 'czeslawa.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czeslawa', null, 'Nowicka', '56070207302', PARSEDATETIME('02/07/1956','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(3, 'anastazy.kaminski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Anastazy', null, 'Kamiński', '51081171572', PARSEDATETIME('11/08/1951','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(4, 'janek.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Janek', null, 'Zajac', '61122779751', PARSEDATETIME('27/12/1961','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(5, 'walery.nowakowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Walery', null, 'Nowakowski', '57072091113', PARSEDATETIME('20/08/1957','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(6, 'przemysl.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Przemysl', null, 'Pawlowski', '75082101712', PARSEDATETIME('21/08/1975','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(7, 'czeslawa.adamska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czeslawa', null, 'Adamska', '71102393286', PARSEDATETIME('23/10/1971','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(8, 'eligia.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eligia', null, 'Sobczak', '74021624028', PARSEDATETIME('16/02/1974','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(9, 'weronika.grabowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Weronika', null, 'Grabowska', '65121853700', PARSEDATETIME('18/12/1965','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(10, 'radomila.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Radomila', null, 'Piotrowska', '97011428842', PARSEDATETIME('14/01/1997','dd/MM/yyyy'), 2);
INSERT INTO Teachers (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`,`birth_date`, `role_id`)
            VALUES(11, 'izydor.dabrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Izydor', null, 'Dabrowski', '63010619031', PARSEDATETIME('06/01/1963','dd/MM/yyyy'), 2);
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

-- KLASA Ia id 1
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(14, 'kacper.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Borkowski', '07292432759', PARSEDATETIME('24/09/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(15, 'cezar.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cezar', null, 'Jabloński', '07270967314', PARSEDATETIME('09/07/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(16, 'roksana.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Roksana', null, 'Piotrowska', '07292356509', PARSEDATETIME('23/09/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(17, 'drugi.wieczorek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Drugi', null, 'Wieczorek', '07301912098', PARSEDATETIME('19/10/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(18, 'jacek.dudek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacek', null, 'Dudek', '07272220871', PARSEDATETIME('22/07/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(19, 'judyta.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Michalska', '07271094286', PARSEDATETIME('10/07/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(20, 'maryla.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Maryla', null, 'Zajac', '07211981980', PARSEDATETIME('19/01/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(21, 'jozef.dabrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jozef', null, 'Dabrowski', '07262734315', PARSEDATETIME('27/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(22, 'michalina.chmielewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Michalina', null, 'Chmielewska', '07261373081', PARSEDATETIME('13/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(23, 'jaroslaw.rutkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jaroslaw', null, 'Rutkowski', '07242693078', PARSEDATETIME('26/04/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(24, 'henryk.symanski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Henryk', null, 'Symanski', '07251602010', PARSEDATETIME('16/05/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(25, 'krystiana.pawlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Krystiana', null, 'Pawlowska', '07281882981', PARSEDATETIME('18/08/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(26, 'cyryl.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cyryl', null, 'Sobczak', '07291611238', PARSEDATETIME('16/09/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(27, 'michalina.kowalczyk@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Michalina', null, 'Kowalczyk', '07262826700', PARSEDATETIME('28/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(28, 'angelika.michalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Michalska', '07212248039', PARSEDATETIME('22/01/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(29, 'sylwia.piotrowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwia', null, 'Piotrowska', '07280323508', PARSEDATETIME('03/08/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(30, 'borys.wozniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Borys', null, 'Wozniak', '07262225516', PARSEDATETIME('22/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(31, 'fryderyk.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Fryderyk', null, 'Michalski', '07310450293', PARSEDATETIME('04/11/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(32, 'judyta.wysocka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Judyta', null, 'Wysocka', '07261575704', PARSEDATETIME('15/06/2007','dd/MM/yyyy'), 1, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(33, 'tomasz.majewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tomasz', null, 'Majewski', '07232178712', PARSEDATETIME('21/23/2007','dd/MM/yyyy'), 1, 3);

-- KLASA IIb id 2
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(34, 'gabrysia.kowalska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Gabrysia', null, 'Kowalska', '06240898744', PARSEDATETIME('08/04/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(35, 'lucja.wozniak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Łucja', null, 'Wozniak', '06281144466', PARSEDATETIME('11/08/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(36, 'natasza.sokolowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Natasza', null, 'Sokolowska', '06222590260', PARSEDATETIME('25/02/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(37, 'wojtek.kalinowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wojtek', null, 'Kalinowski', '06250515839', PARSEDATETIME('05/05/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(38, 'hendrych.kowalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hendrych', null, 'Kowalski', '06310658632', PARSEDATETIME('06/11/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(39, 'leslawa.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Leslawa', null, 'Nowicka', '06220209041', PARSEDATETIME('02/02/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(40, 'katarzyna.gorska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Katarzyna', null, 'Gorska', '06272099825', PARSEDATETIME('20/07/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(41, 'angelika.grabowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Grabowska', '06261025028', PARSEDATETIME('10/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(42, 'cecylia.sokolowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Cecylia', null, 'Sokolowska', '06312129569', PARSEDATETIME('21/11/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(43, 'maurycy.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Maurycy', null, 'Pawlowski', '06230837959', PARSEDATETIME('08/03/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(44, 'jarogniew.piotrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarogniew', null, 'Piotrowski', '06311510719', PARSEDATETIME('15/11/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(45, 'wincenty.czerwinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wincenty', null, 'Czerwinski', '06260935230', PARSEDATETIME('09/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(46, 'serafina.nowicka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Serafina', null, 'Nowicka', '06242687102', PARSEDATETIME('26/04/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(47, 'lubomir.pawlowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Lubomir', null, 'Pawlowski', '06272483176', PARSEDATETIME('24/07/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(48, 'aniela.wiśniewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Aniela', null, 'Wiśniewska', '06302020647', PARSEDATETIME('02/10/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(49, 'dobroslawa.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwia', null, 'Piotrowska', '06252341685', PARSEDATETIME('23/05/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(50, 'ania.tomaszewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ania', null, 'Tomaszewska', '06260737085', PARSEDATETIME('07/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(51, 'zachariasz.kaczmarek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zachariasz', null, 'Kaczmarek', '06262020275', PARSEDATETIME('20/06/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(52, 'jozefa.zawadzka@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jozefa', null, 'Zawadzka', '06300159521', PARSEDATETIME('01/10/2006','dd/MM/yyyy'), 2, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(53, 'hieronim.olszewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hieronim', null, 'Olszewski', '06281169177', PARSEDATETIME('11/08/2006','dd/MM/yyyy'), 2, 3);

-- KLASA IIId id 3
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(54, 'eustachy.jasiński@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Eustachy', null, 'Jasiński', '05220484573', PARSEDATETIME('04/02/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(55, 'wislaw.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wislaw', null, 'Michalski', '05260488779', PARSEDATETIME('04/06/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(56, 'karina.czerwinska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Karina', null, 'Czerwinska', '05210497608', PARSEDATETIME('04/01/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(57, 'klemens.kucharski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Klemens', null, 'Kucharski', '05261973256', PARSEDATETIME('19/06/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(58, 'jarek.kwiatkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jarek', null, 'Kwiatkowski', '05230334039', PARSEDATETIME('03/03/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(59, 'lukasz.kamiński@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Łukasz', null, 'Kamiński', '05272129893', PARSEDATETIME('21/07/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(60, 'zosia.kozlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Zosia', null, 'Kozlowska', '05302017989', PARSEDATETIME('20/03/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(61, 'antoni.wojciechowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Antoni', null, 'Wojciechowski', '05302693073', PARSEDATETIME('26/10/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(62, 'angelika.gorska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Angelika', null, 'Gorska', '05211351343', PARSEDATETIME('13/01/2005','dd/MM/yyyy'), 3, 3);
INSERT INTO Students (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `class_id`, `role_id`)
              VALUES(63, 'czcibor.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Czcibor', null, 'Borkowski', '05221978752', PARSEDATETIME('19/02/2005','dd/MM/yyyy'), 3, 3);
-- SAMPLE STUDENTS END

-- SAMPLE PARENTS START
-- TODO: Dodanie rodzicow dla kazdego z uczniow (kilka przypadkow, gdy rodzicow przypisanych do ucznia jest dwoch
INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(64, 'wielisław.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miloslaw', null, 'Borkowski', '88100990179', PARSEDATETIME('09/10/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (14,64);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(65, 'hipolit.michalski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wielisław', null, 'Michalski', '83021755713', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (15,65);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(66, 'kasper.jasinski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Kacper', null, 'Jasiński', '88189790179', PARSEDATETIME('17/10/1972','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (16,66);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(67, 'wojciech.dabrowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Wojciech', null, 'Dabrowski', '532555600', PARSEDATETIME('23/09/1974','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (17,67);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(68, 'tekla.maciejewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Tekla', null, 'Maciejewska', '675177353', PARSEDATETIME('19/10/1968','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (18,68);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(69, 'radomila.kwiatkowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Radomila', null, 'Kwiatkowska', '886267881', PARSEDATETIME('22/02/1980','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (19,69);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(70, 'jacenty.adamski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacenty', 'Maria', 'Adamski', '608850082', PARSEDATETIME('09/01/1965','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (20,70);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(71, 'albina.wisniewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Albina', null, 'Wiśniewska', '889043114', PARSEDATETIME('06/12/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (21,71);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(72, 'milos.zzarnecki@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miłosz', null, 'Czarnecki', '07251999237', PARSEDATETIME('09/10/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (22,72);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(73, 'karolina.chmielewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Karolina', 'Agnieszka', 'Chmielewska', '533539885', PARSEDATETIME('14/05/1990','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (23,73);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(74, 'waclawa.kucharska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Waclawa', null, 'Kucharska', '662067416', PARSEDATETIME('09/09/1989','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (24,74);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(75, 'ludwika.wieczorek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ludwika', null, 'Wieczorek', '887239675', PARSEDATETIME('24/10/1967','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (25,75);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(76, 'bratumil.czarnecki@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Bratumil', null, 'Czarnecki', '672929095', PARSEDATETIME('26/03/1970','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (26,76);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(77, 'amadej.wisniewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Amadej', 'Ezekiel', 'Wiśniewski', '887923836', PARSEDATETIME('14/12/1965','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (27,77);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(78, 'jacek.olszewski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Jacek', null, 'Olszewski', '888899011', PARSEDATETIME('14/02/1980','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (28,78);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(79, 'ewa.czerwinska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ewa', 'Anna', 'Czerwińska', '697912681', PARSEDATETIME('05/04/1995','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (29,79);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(80, 'sylwester.kaczmarek@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Sylwester', null, 'Kaczmarek', '798514603', PARSEDATETIME('08/07/1967','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (30,80);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(81, 'joanna.kalinowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Joanna', 'Grazyna', 'Kalinowska', '609066175', PARSEDATETIME('06/08/1973','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (31,81);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(82, 'miloslaw.borkowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Miloslaw', null, 'Borkowski', '88021195770', PARSEDATETIME('09/10/1988','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (32,82);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(83, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (33,83);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(84, 'ela.majewska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ela', null, 'Majewska', '92121246483', PARSEDATETIME('06/06/1984','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (34,84);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(85, 'dorota.pawlowska@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Dorota', null, 'Pawlowska', '693714803', PARSEDATETIME('29/11/1982','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (35,85);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(86, 'fryderyk.wojciechowski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Fryderyk', 'Andrzej', 'Wojciechowski', '667936301', PARSEDATETIME('11/07/1973','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (36,86);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(87, 'marcin.sobczak@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Marcin', null, 'Sobczak', '888238586', PARSEDATETIME('26/09/1976','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (37,87);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(89, 'mikolaj.zajac@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Mikolaj', null, 'Zajac', '662262372', PARSEDATETIME('31/10/1957','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (39,89);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(90, 'ala.makota@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Ala', null, 'Makota', '123456789', PARSEDATETIME('14/07/1996','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (40,90);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(91, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (41,91);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(92, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (42,91);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(93, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (43,92);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(94, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (44,93);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(95, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (45,94);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(96, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (46,95);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(97, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (47,96);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(98, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (48,97);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(99, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (49,98);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(100, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (50, 100);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(101, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (51,101);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(102, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (52,102);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(103, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (53,103);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(104, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (54,104);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(105, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (55,105);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(106, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (56,106);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(107, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (57,107);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(108, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (58,108);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(109, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (59,109);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(110, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (60,110);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(111, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (61,111);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(112, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (62,112);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(113, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (62,113);

INSERT INTO Parents (`id`, `email`, `password`, `enabled`, `first_name`, `second_name`, `surname`, `pesel`, `birth_date`, `role_id`)
              VALUES(114, 'hipolit.jablonski@edziennik.pl', '$2a$04$tzZaS0wCxdyU7UWjLxaw7uVWbHhJ0duyGOGI/0eWfwUNtAYPqFvqa', true, 'Hipolit', null, 'Jabloński', '56092630074', PARSEDATETIME('26/09/1956','dd/MM/yyyy'), 4);
INSERT INTO Students_Parents (`student_id`, `parent_id`) VALUES (63,114);
-- SAMPLE PARENTS END

-- SAMPLE SUBJECTS START
-- TODO: Dodanie nowych przedmiotow (po jednym dla kazdego nauczyciela)
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (1, 'matematyka', 2);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (2, 'język polski', 3);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (3, 'język angielski', 4);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (4, 'wychowanie fizyczne', 5);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (5, 'religia', 6);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (6, 'historia', 7);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (7, 'przyroda', 8);
INSERT INTO Subjects (`id`, `name`, `teacher_id`) VALUES (8, 'fizyka', 9);

-- SAMPLE SUBJECTS END

-- MEETINGS START
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (1, 1, PARSEDATETIME('8:00', 'HH:mm'), PARSEDATETIME('8:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (2, 2, PARSEDATETIME('9:00', 'HH:mm'), PARSEDATETIME('9:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (3, 3, PARSEDATETIME('10:00',  'HH:mm'), PARSEDATETIME('10:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (4, 4, PARSEDATETIME('11:00', 'HH:mm'), PARSEDATETIME('11:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (5, 5, PARSEDATETIME('12:00', 'HH:mm'), PARSEDATETIME('12:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (6, 6, PARSEDATETIME('13:00', 'HH:mm'), PARSEDATETIME('13:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (7, 7, PARSEDATETIME('14:00', 'HH:mm'), PARSEDATETIME('14:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (8, 8, PARSEDATETIME('15:00', 'HH:mm'), PARSEDATETIME('15:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (9, 9, PARSEDATETIME('16:00', 'HH:mm'), PARSEDATETIME('16:45', 'HH:mm'));
INSERT INTO meeting_hours (`id`, `meeting_number`, `start_time`, `end_time`) VALUES (10, 10, PARSEDATETIME('17:00', 'HH:mm'), PARSEDATETIME('17:45', 'HH:mm'));

-- PONIEDZIAŁEK
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (1, 1, 1, 1, 2, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (2, 1, 2, 1, 3, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (3, 1, 4, 1, 5, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (4, 1, 3, 1, 4, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (5, 1, 8, 1, 4, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (6, 1, 3, 1, 4, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (7, 1, 5, 1, 6, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (8, 1, null, 1, null, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (9, 1, null, 1, null, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (10, 1, null, 1, null, 10);

-- WTOREK
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (11, 2, 8, 1, 9, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (12, 2, 8, 1, 9, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (13, 2, 7, 1, 8, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (14, 2, 2, 1, 3, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (15, 2, 2, 1, 3, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (16, 2, null, 1, null, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (17, 2, null, 1, null, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (18, 2, null, 1, null, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (19, 2, null, 1, null, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (20, 2, null, 1, null, 10);

-- SRODA
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (31, 3, null, 1, null, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (32, 3, null, 1, null, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (33, 3, 7, 1, 8, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (34, 3, null, 1, null, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (35, 3, null, 1, null, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (36, 3, null, 1, null, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (37, 3, 3, 1, 4, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (38, 3, 5, 1, 6, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (39, 3, 6, 1, 7, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (40, 3, null, 1, null, 10);

-- CZWARTEK
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (51, 4, null, 1, null, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (52, 4, null, 1, null, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (53, 4, null, 1, null, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (54, 4, null, 1, null, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (55, 4, 1, 1, 2, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (56, 4, 1, 1, 2, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (57, 4, 1, 1, 2, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (58, 4, 2, 1, 3, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (59, 4, 4, 1, 5, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (60, 4, 8, 1, 9, 10);

-- PIATEK
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (61, 5, 6, 1, 7, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (62, 5, 5, 1, 6, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (63, 5, 3, 1, 4, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (64, 5, 7, 1, 8, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (65, 5, 6, 1, 7, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (66, 5, 5, 1, 6, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (67, 5, null, 1, null, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (68, 5, null, 1, null, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (69, 5, null, 1, null, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (70, 5, null, 1, null, 10);

-- SOBOTA
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (71, 6, null, 1, null, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (72, 6, null, 1, null, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (73, 6, null, 1, null, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (74, 6, null, 1, null, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (75, 6, null, 1, null, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (76, 6, null, 1, null, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (77, 6, null, 1, null, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (78, 6, null, 1, null, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (79, 6, null, 1, null, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (80, 6, null, 1, null, 10);

-- NIEDZIELA
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (81, 7, null, 1, null, 1);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (82, 7, null, 1, null, 2);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (83, 7, null, 1, null, 3);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (84, 7, null, 1, null, 4);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (85, 7, null, 1, null, 5);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (86, 7, null, 1, null, 6);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (87, 7, null, 1, null, 7);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (88, 7, null, 1, null, 8);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (89, 7, null, 1, null, 9);
INSERT INTO Meetings (`id`, `week_number`, `subject_id`, `class_id`, `teacher_id`, `meeting_hour_id`) VALUES (90, 7, null, 1, null, 10);


-- MEETINGS END

-- GRADE SET START
-- Kartkowka z funkcji liniowych dnia 19.11.2018 w klasie Ia z matematyki przeprowadzona przez nauczyciela o ID=1
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (1, PARSEDATETIME('06/09/2018', 'dd/MM/yyyy'), 'Kartkowka z funkcji liniowych', 1, 1, 1, 2);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (2, PARSEDATETIME('19/09/2018', 'dd/MM/yyyy'), 'Odpowiedz ustna - Znajomość lektury "Dzieci z Bulerbyn"', 2, 1, 2, 3);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (3, PARSEDATETIME('23/10/2018', 'dd/MM/yyyy'), 'Sprawdzian z dzialu pierwszego', 3, 1, 3, 4);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (4, PARSEDATETIME('26/09/2018', 'dd/MM/yyyy'), 'Praca domowa z bezkręgowcow', 1, 2, 7, 8);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (5, PARSEDATETIME('11/09/2018', 'dd/MM/yyyy'), 'Testy sprawnościowe', 2, 1, 4, 5);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (6, PARSEDATETIME('24/09/2018', 'dd/MM/yyyy'), 'Odmawianie modlitwy Ojcze Nasz', 1, 1, 5, 6);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (7, PARSEDATETIME('07/11/2018', 'dd/MM/yyyy'), 'Sprawdzian z dzialu "Panowanie Piastow"', 3, 3, 6, 7);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (8, PARSEDATETIME('26/09/2018', 'dd/MM/yyyy'), 'Droga i czas - kartkowka ze wzorow ', 2, 1, 8, 9);
INSERT INTO Grades_Set (`id`, `date`, `title`, `weight`, `class_id`, `subject_id`, `teacher_id`)
                VALUES (9, PARSEDATETIME('07/11/2018', 'dd/MM/yyyy'), 'Kartkówka wartości bezwzględne', 2, 1, 1, 2);


-- TODO: Dodanie kolejnych typow ocen dla roznych przedmiotow, od roznych nauczycieli, o roznych wagach
-- GRADE SET END

-- GRADES START
-- OCENY Z "KARTKÓWKA Z FUNKCJI LINIOWYCH"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (1, 14, 1, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (2, 15, 1, 1.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (3, 16, 1, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (4, 17, 1, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (5, 18, 1, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (6, 19, 1, 2.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (7, 20, 1, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (8, 21, 1, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (9, 22, 1, 1.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (10, 23, 1, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (11, 24, 1, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (12, 25, 1, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (13, 26, 1, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (14, 27, 1, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (15, 28, 1, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (16, 29, 1, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (17, 30, 1, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (18, 31, 1, 9);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (19, 32, 1, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (20, 33, 1, 4);

-- OCENY Z "Odpowiedz ustna - Znajomość lektury "Dzieci z Bulerbyn"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (145, 14, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (146, 15, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (147, 16, 2, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (148, 17, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (149, 18, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (150, 19, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (151, 20, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (152, 21, 2, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (153, 22, 2, 1.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (154, 23, 2, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (155, 24, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (156, 25, 2, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (157, 26, 2, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (158, 27, 2, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (159, 28, 2, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (160, 29, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (161, 30, 2, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (162, 31, 2, 9);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (163, 32, 2, 0);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (164, 33, 2, 0);


-- OCENY Z "Sprawdzian z dzialu pierwszego"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (25, 14, 3, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (26, 15, 3, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (27, 16, 3, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (28, 17, 3, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (29, 18, 3, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (30, 19, 3, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (31, 20, 3, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (32, 21, 3, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (33, 22, 3, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (34, 23, 3, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (35, 24, 3, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (36, 25, 3, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (37, 26, 3, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (38, 27, 3, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (39, 28, 3, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (40, 29, 3, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (41, 30, 3, 2.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (42, 31, 3, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (43, 32, 3, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (44, 33, 3, 2.5);

-- OCENY Z "Praca domowa z bezkręgowcow"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (45, 14, 4, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (46, 15, 4, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (47, 16, 4, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (48, 17, 4, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (49, 18, 4, 8);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (50, 19, 4, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (51, 20, 4, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (52, 21, 4, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (53, 22, 4, 6);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (54, 23, 4, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (55, 24, 4, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (56, 25, 4, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (57, 26, 4, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (58, 27, 4, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (59, 28, 4, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (60, 29, 4, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (61, 30, 4, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (62, 31, 4, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (63, 32, 4, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (64, 33, 4, 1);

-- OCENY Z "Testy sprawnosciowe"

INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (65, 14, 5, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (66, 15, 5, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (67, 16, 5, 1.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (68, 17, 5, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (69, 18, 5, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (70, 19, 5, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (71, 20, 5, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (72, 21, 5, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (73, 22, 5, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (74, 23, 5, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (75, 24, 5, 3.4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (76, 25, 5, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (77, 26, 5, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (78, 27, 5, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (79, 28, 5, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (80, 29, 5, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (81, 30, 5, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (82, 31, 5, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (83, 32, 5, 5);

-- OCENY Z "Odmawianie modlitwy OJCZE NASZ"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (84, 14, 6, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (85, 15, 6, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (86, 16, 6, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (87, 17, 6, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (88, 18, 6, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (89, 19, 6, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (90, 20, 6, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (91, 21, 6, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (92, 22, 6, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (93, 23, 6, 3.4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (94, 24, 6, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (95, 25, 6, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (96, 26, 6, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (97, 27, 6, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (98, 28, 6, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (99, 29, 6, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (100, 30, 6, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (101, 31, 6, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (102, 32, 6, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (103, 33, 6, 2);

-- OCENY Z "Sprawdzain z dzialu "Panowanie Piastow"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (104, 14, 7, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (105, 15, 7, 2.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (106, 16, 7, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (107, 17, 7, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (108, 18, 7, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (109, 19, 7, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (110, 20, 7, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (111, 21, 7, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (112, 22, 7, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (113, 23, 7, 3);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (114, 24, 7, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (115, 25, 7, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (116, 26, 7, 2.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (117, 27, 7, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (118, 28, 7, 3.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (119, 29, 7, 4);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (120, 30, 7, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (121, 31, 7, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (122, 32, 7, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (123, 33, 7, 4.5);

-- OCENY Z "Droga i czas - kartkowka ze wzorow"
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (124, 14, 8, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (125, 15, 8, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (126, 16, 8, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (127, 17, 8, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (128, 18, 8, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (129, 19, 8, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (130, 20, 8, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (131, 21, 8, 1.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (132, 22, 8, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (133, 23, 8, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (134, 24, 8, 2);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (135, 25, 8, 4.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (136, 26, 8, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (137, 27, 8, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (138, 28, 8, 5.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (139, 29, 8, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (140, 30, 8, 5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (141, 31, 8, 1.5);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (142, 32, 8, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (143, 33, 8, 1);
INSERT INTO Grades (`id`, `student_id`, `grade_set_id`, `grade`)
            VALUES (144, 15, 9, 6);
-- GRADES END

