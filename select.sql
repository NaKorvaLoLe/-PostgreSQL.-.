/*название и год выхода альбомов, вышедших в 2018 году;*/
select album_name, year_of  from album
where year_of = 2018;

/*название и продолжительность самого длительного трека;*/
select song_name, duration from songs
order by duration desc 
limit 1;

/*название треков, продолжительность которых не менее 3,5 минуты;*/
select song_name  from songs
where duration >= 3.5*60;

/*названия сборников, вышедших в период с 2018 по 2020 год включительно;*/
select colection_name, year_of  from colection
where year_of between 2018 and 2021;

/*исполнители, чье имя состоит из 1 слова;*/
select bands_name  from bands
where bands_name not like '% %';

/*название треков, которые содержат слово "мой"/"my".*/
select song_name from songs
where lower(song_name) like '%my%' or lower(song_name) like '%мой%';