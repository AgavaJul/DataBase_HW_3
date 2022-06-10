
insert into genre (genre_name)
values ('Jaz'),
('Pop'),
('Rock'),
('Kantry'),
('Disco')

insert into musician (musician_name, nickname)
values ('Michael Joseph Jackson', 'Michael Jackson'),
('Madonna Louise Ciccone', 'Madonna'),
('Земфира Талгатовна Рамазанова', 'Земфира'),
('Юлия Дмитриевна Чичерина', 'Чичерина'),
('Francis Albert Sinatra', 'Frank Sinatra'),
('Louis Daniel Armstrong', 'Louis Armstrong'),
('Nancy Sandra Sinatra', 'Nancy Sinatra'),
('Taylor Alison Swift', 'Taylor Swift'),
('Manfred Alois Segieth', 'Fancy'),
('Didier Marouani', 'Ecama')

insert into genre_musician (genre_id, musician_id)
values (1, 5),
(1, 6),
(2, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 7),
(4, 8),
(5, 9),
(5, 10)

insert into music_album (music_album_name, year_of_release)
values ('Symphonic Space Dream', 2006),
('Scream', 2017),
('Forever, Michael', 2010),
('True Blue', 2021),
('СПАСИБО', 2007),
('Nancy & Lee 3', 2004),
('willow', 2020),
('Течение', 2002)


insert into music_album (music_album_name, year_of_release)
values ('30 Years - The New Best Of', 2018)


insert into music_track (track_name, duration, music_album_id)
values ('Rima Song', '00:04:26', 1),
('From Angels to Raphael', '00:04:14', 1),
('Start', '00:04:31', 1),
('New York - Paris', '00:05:10', 1),
('Thriller', '00:05:57', 2),
('Unbreakable', '00:06:25', 2),
('Threatened', '00:04:19', 2),
('We`ve Got Forever', '00:03:12', 3),
('You Are There', '00:03:25', 3),
('Dapper Dan', '00:03:12', 3),
('La Isla Bonita', '00:04:02', 4),
('Jimmy Jimmy', '00:03:55', 4),
('White Heat', '00:04:40', 4),
('ГОСПОДА', '00:03:24', 5),
('1000 ЛЕТ', '00:04:10', 5),
('СНЕГ НАЧНЁТСЯ', '00:04:25', 5),
('After The Lovin', '00:03:01', 6),
('Loving You Loving Me', '00:03:47', 6),
('Pack Saddle Saloon', '00:04:03', 6),
('willow', '00:03:04', 7),
('В десятку', '00:03:34', 8),
('Сломала себя', '00:03:11', 8),
('Сама', '00:03:14', 8)

insert into music_track (track_name, duration, music_album_id)
values ('Rima my Song', '00:04:26', 1),
('My White Heat', '00:04:40', 4)


insert into album_track (track_id, musician_id)
values (1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 3),
(16, 3),
(17, 7),
(18, 7),
(19, 7),
(20, 8),
(21, 4),
(22, 4),
(23, 4)

insert into music_collection (music_collection_name, year_of_release)
values ('never', 2015),
('first', 2016),
('one', 2021),
('da-da', 2018),
('collection', 2019),
('welcome', 2020),
('no-no', 2018),
('two', 2015)

insert into track_collection
values (1, 1),
(1, 2),
(1, 3),
(2, 5),
(2, 8),
(2, 15),
(3, 4),
(3, 3),
(3, 21),
(4, 18),
(4, 22),
(5, 7),
(5, 6),
(5, 17),
(6, 23),
(6, 20),
(6, 14),
(7, 1),
(7, 13),
(7, 22),
(8, 5),
(8, 9),
(8, 12),
(8, 16)

select music_album_name as "Название альбома", year_of_release as "Год выпуска"
from music_album
where year_of_release = 2018;

select track_name as "Название трека", duration as "Длительность"
from music_track
where duration = (select max (duration) from music_track);

select track_name as "Название трека"
from music_track
where duration >= '00:03:30';

select music_collection_name as "Название сборника"
from music_collection
where year_of_release between 2018 and 2020;

select nickname as "Псевдоним, состоящий из 1 слова"
from musician 
where nickname not like '% %';  #взяла столбец nickname для чистоты эксперимента, ведь имен, состоящих из одного слова у меня нет

select track_name as "Название трека"
from music_track
where track_name ilike '%my%';