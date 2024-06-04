-- 2.1. Название и продолжительность самого длительного трека
select track_name, duration from track t 
where duration = (select max(duration) from track t2 ) ;

-- 2.2. Название треков, продолжительность которых не менее 3,5 минут
select track_name, duration from track t 
where duration > 210;

-- 2.3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
select collection_name from collection c 
where year_collection between '2018' and '2020';

-- 2.4. Исполнители, чьё имя состоит из одного слова
select musician_name from musician m 
where not musician_name like '% %';

-- 2.5. Название треков, которые содержат слово «мой» или «my»
select track_name from track t 
where track_name like '%my%' or track_name like '%My%';


-- 3.1. Количество исполнителей в каждом жанре
select genre_name, count(m.id) from genre g 
left join genremusician g2 on g2.id_genre = g.id 
left join musician m on m.id = g.id 
group by genre_name 
order by count(m.id)

-- 3.2. Количество треков, вошедших в альбомы 2019–2020 годов
select count(track_name) from track t 
join album a  on a.id = t.id_album 
where year_album between '2019' and '2020'
group by year_album 

-- 3.3. Средняя продолжительность треков по каждому альбому.
select album_name, avg(duration) from track t 
join album a on a.id = t.id_album 
group by album_name 

-- 3.4. Все исполнители, которые не выпустили альбомы в 2020 году
select musician_name from musician m 
join albummusician a on a.id_musician = m.id 
join album a2 on a2.id = a.id_album 
where not year_album = '2020'

-- 3.5. Названия сборников, в которых присутствует конкретный исполнитель (Pompeya)
select collection_name from collection c 
join collectiontrack c2 on c2.id_collection = c.id 
join track t on t.id = c2.id_track 
join albummusician a on a.id_album = t.id_album 
join musician m on m.id = a.id_musician 
where musician_name = 'Pompeya'
group by collection_name


-- 4.1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра
select album_name from album a 
join albummusician a2 on a2.id_album = a.id 
join genremusician g on g.id_musician = a2.id_musician 
where (select count(id_genre) from genremusician g2 ) > 2
group by album_name 

-- 4.2. Наименования треков, которые не входят в сборники
select id, track_name from track t 
--join collectiontrack c on c.id_track = t.id 
where t.id not in (select id_track from collectiontrack c)

-- 4.3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
-- теоретически таких треков может быть несколько
select musician_name from musician m 
join albummusician a on a.id_musician = m.id 
join album a2 on a2.id = a.id_album 
join track t on t.id_album = a.id_album 
where duration = (select min(duration) from track)

-- 4.4. Названия альбомов, содержащих наименьшее количество треков
select album_name from album a 
where id in (select id_album from track t
	group by id_album
	having count(*) = (select count(*) from track
		group  by id_album
		order by count(*)
		limit 1)
)