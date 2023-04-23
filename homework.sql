create table if not exists genre(
	id serial primary key,
	genre_name varchar(50) not null
);

create table if not exists Bands(
	id serial primary key,
	bands_name varchar(250) not null
);

create table if not exists GenreBand(
	genre_id integer references Genre(id),
	band_id integer references Bands(id),
	constraint pk_GenreBand primary key (genre_id, band_id)
);

create table if not exists Album(
	id serial primary key,
	album_name varchar(250)not null,
	year_of integer not null
);

create table if not exists BandsAlbum(
	band_id integer references Bands(id),
	album_id integer references Album(id),
	constraint pk_AlbumBands primary key (band_id, album_id)
);

create table if not exists Songs(
	id serial primary key,
	song_name varchar(50) not null,
	duration integer,
	album_id integer references album(id)
);
create table if not exists Colection(
	id serial primary key,
	colection_name varchar(50) not null,
	year_of integer not null	
);

create table if not exists SongsColection(
	song_id integer references Songs(id),
	colection_id integer references Colection(id),
	constraint pk_SongColection primary key (song_id, colection_id)
);
