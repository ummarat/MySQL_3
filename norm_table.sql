-- Завдання 2
create database NormTable;

use NormTable;

create table subjects(
id int auto_increment not null,
name varchar (25) not null,
office int (3),
platoon int (3) not null,
primary key (id)
);

create table weapon(
id_weapon int auto_increment not null primary key,
model varchar (10) not null
);

create table bailee(
id_subjects int,
id_weapon int,
id int auto_increment not null,
name varchar (20) not null,
ranks varchar (15) not null,
foreign key (id_subjects) references subjects (id),
foreign key (id_weapon) references weapon (id_weapon),
primary key (id, name)
);

insert into subjects
(name, office, platoon)
value
('Петров В.А.', 205, 222),
('Лодарев П.С.', 221, 232),
('Леонтьев К.В.', 201, 212),
('Духов Р.М.', null, 200);

insert into weapon
(model)
value
('АК-47'),
('Глок-20'),
('АК-74');

insert into bailee
(id_subjects, id_weapon, name, ranks)
value
(1, 1, 'Буров О.С.', 'майор'),
(1, 2, 'Рыбаков Н.Г.', 'майор'),
(2, 3, 'Деребанов В.Я.', 'подполковник'),
(2, 2, 'Рыбаков Н.Г.', 'майор'),
(3, 1, 'Буров О.С.', 'майор'),
(3, 2, 'Рыбаков Н.Г.', 'майор'),
(4, 1, 'Буров О.С.', 'майор');

select * from subjects;
select * from weapon;
select * from bailee;