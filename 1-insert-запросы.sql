--Добавляем данные по жанрам
insert into genre (genre_name)
values ('Фанк')

insert into genre (genre_name)
values ('Инди-рок')

insert into genre (genre_name)
values ('Инди-поп')

insert into genre (genre_name)
values ('Соул')

--Добавляем музыкантов

insert into musician  (musician_name)
values ('Khruangabin')

insert into musician  (musician_name)
values ('Florense and The Machine')

insert into musician  (musician_name)
values ('Pompeya')

insert into musician  (musician_name)
values ('Parcels')

insert into musician  (musician_name)
values ('Leon Bridges')

--Добавляем альбомы

insert into album  (album_name, year_album)
values ('Texas Sun', '2020')

insert into album  (album_name, year_album)
values ('High as Hope', '2018')

insert into album  (album_name, year_album)
values ('Bingo', '2019')

insert into album  (album_name, year_album)
values ('Live Vol. 1', '2020')

--Добавляем треки

insert into track  (id_album, track_name, duration)
values ('1', 'Texas Sun', '252')

insert into track  (id_album, track_name, duration)
values ('1', 'Midnight', '314')

insert into track  (id_album, track_name, duration)
values ('1', 'C-Side', '283')

insert into track  (id_album, track_name, duration)
values ('1', 'Conversion', '406')

insert into track  (id_album, track_name, duration)
values ('2', 'June', '222')

insert into track  (id_album, track_name, duration)
values ('2', 'Hunger', '214')

insert into track  (id_album, track_name, duration)
values ('2', 'South London Forever', '262')

insert into track  (id_album, track_name, duration)
values ('2', 'Big God', '241')

insert into track  (id_album, track_name, duration)
values ('3', 'Traditiona Values', '228')

insert into track  (id_album, track_name, duration)
values ('3', 'Odelay', '195')

insert into track  (id_album, track_name, duration)
values ('3', 'I am On My Own', '217')

insert into track  (id_album, track_name, duration)
values ('3', 'Cute Song', '227')

insert into track  (id_album, track_name, duration)
values ('4', 'Enter', '179')

insert into track  (id_album, track_name, duration)
values ('4', 'Myenemy', '209')

insert into track  (id_album, track_name, duration)
values ('4', 'Bemyself', '268')

insert into track  (id_album, track_name, duration)
values ('4', 'Comedown', '206')

insert into track (id_album, track_name, duration)
values ('4', 'lightenup', '294'),
('2', 'Sky Full Of Songs', '226'),
('3', 'Y&S', '228')


--Добавляем сборники

insert into collection  (year_collection , collection_name)
values ('2020', 'Сборник 2020')

insert into collection  (year_collection , collection_name)
values ('2019', 'Сборник Инди-поп')

insert into collection  (year_collection , collection_name)
values ('2020', 'Сборник Фанк')

insert into collection  (year_collection , collection_name)
values ('2020', 'Сборник по всем жанрам')

--Таблица связи жанров и музыкантов

insert into genremusician  (id_genre, id_musician)
values ('1', '1')

insert into genremusician  (id_genre, id_musician)
values ('1', '4')

insert into genremusician  (id_genre, id_musician)
values ('1', '5')

insert into genremusician  (id_genre, id_musician)
values ('2', '1')

insert into genremusician  (id_genre, id_musician)
values ('2', '2')

insert into genremusician  (id_genre, id_musician)
values ('3', '2')

insert into genremusician  (id_genre, id_musician)
values ('3', '3')

insert into genremusician  (id_genre, id_musician)
values ('3', '4')

insert into genremusician  (id_genre, id_musician)
values ('4', '5')

-- Таблица связи альбомов и музыкантов

insert into albummusician  (id_album , id_musician)
values ('1', '1')

insert into albummusician  (id_album , id_musician)
values ('1', '5')

insert into albummusician  (id_album , id_musician)
values ('2', '2')

insert into albummusician  (id_album , id_musician)
values ('3', '3')

insert into albummusician  (id_album , id_musician)
values ('4', '4')

-- Таблица свзяи сборники и треки

insert into collectiontrack (id_collection, id_track)
values ('1', '1')

insert into collectiontrack (id_collection, id_track)
values ('1', '2')

insert into collectiontrack (id_collection, id_track)
values ('1', '13')

insert into collectiontrack (id_collection, id_track)
values ('1', '16')

insert into collectiontrack (id_collection, id_track)
values ('2', '6')

insert into collectiontrack (id_collection, id_track)
values ('2', '8')

insert into collectiontrack (id_collection, id_track)
values ('2', '11')

insert into collectiontrack (id_collection, id_track)
values ('2', '12')

insert into collectiontrack (id_collection, id_track)
values ('3', '2')

insert into collectiontrack (id_collection, id_track)
values ('3', '1')

insert into collectiontrack (id_collection, id_track)
values ('3', '13')

insert into collectiontrack (id_collection, id_track)
values ('3', '14')

insert into collectiontrack (id_collection, id_track)
values ('4', '1')

insert into collectiontrack (id_collection, id_track)
values ('4', '5')

insert into collectiontrack (id_collection, id_track)
values ('4', '9')

insert into collectiontrack (id_collection, id_track)
values ('4', '13')
