select music_album_name as "�������� �������", year_of_release as "��� �������"
from music_album
where year_of_release = 2018;

select track_name as "�������� �����", duration as "������������"
from music_track
where duration = (select max (duration) from music_track);

select track_name as "�������� �����"
from music_track
where duration >= '00:03:30';

select music_collection_name as "�������� ��������"
from music_collection
where year_of_release between 2018 and 2020;

select nickname as "���������, ��������� �� 1 �����"
from musician 
where nickname not like '% %';  #����� ������� nickname ��� ������� ������������, ���� ����, ��������� �� ������ ����� � ���� ���

select track_name as "�������� �����"
from music_track
where track_name ilike '%my%';