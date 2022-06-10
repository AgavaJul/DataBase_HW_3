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