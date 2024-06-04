create table if not exists Genre (
	id SERIAL primary key,
	genre_name VARCHAR(255) not null
);

create table if not exists Musician (
	id SERIAL primary key,
	musician_name VARCHAR(255) not null
);

create table if not exists GenreMusician (
	id_genre INTEGER references Genre(id),
	id_musician INTEGER references Musician(id),
	constraint PK_GenreMusician primary key (id_genre, id_musician)
);

create table if not exists Album (
	id SERIAL primary key,
	album_name VARCHAR(255) not null,
	year_album SMALLINT not null
);

create table if not exists AlbumMusician (
	id_album INTEGER references Album(id),
	id_musician INTEGER references Musician(id),
	constraint PK_AlbumMusician primary key (id_album, id_musician)
);

create table if not exists Track (
	id SERIAL primary key,
	id_album INTEGER not null references Album(id),
	track_name VARCHAR(255) not null,
	duration SMALLINT not null 
);

create table if not exists Collection (
	id SERIAL primary key,
	year_collection SMALLINT not null,
	collection_name VARCHAR(255) not null
);

create table if not exists CollectionTrack (
	id_collection INTEGER references Collection(id),
	id_track INTEGER references Track(id),
	constraint PK_CollectionTrack primary key (id_collection, id_track)
);