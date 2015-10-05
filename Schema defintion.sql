create schema mymusic_collection;
use mymusic_collection;
create table Album
(
	album_id Integer primary Key not null Auto_Increment,
    title varchar(50),
    recording_date date,
    rating float
);
create table Releases
(
	release_ID Integer primary key not null Auto_Increment,
	album_id varchar(50),
    duration time,
    no_of_tracks Integer,
    release_date date,
    constraint album_release foreign key (album_id) references Album(album_id) on delete cascade
);
create table Album_Genre
(
album_id varchar(50),
genre_name varchar(10),
constraint album_genre foreign key (album_id) references Album(album_id) on delete cascade
);

create table Artist
(
artist_id integer primary key not null Auto_Increment,
first_name varchar(50),
last_name varchar(50)
);

create table Album_Artist 
(
album_id varchar(50),
artist_id integer,
constraint album_artist foreign key (album_id) references Album(album_id) on delete cascade
);
