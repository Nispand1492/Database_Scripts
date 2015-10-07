#create schema mymusic_collection;
use mymusic_collection;
#create table Album
#(
#	album_id Integer primary Key not null Auto_Increment,
 #   title varchar(50),
  #  recording_date date,
#    rating float
#);

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
artist_id integer ,
constraint artist_id foreign key (artist_id) references Artist(artist_id) on delete cascade,
constraint album_id foreign key (album_id) references Album(album_id) on delete cascade
);

create table Band
(	
artist_id integer,
band_name varchar(50),
constraint artist_id foreign key (artist_id) references Artist(artsit_id) on delete cascade
);

create table Collection
(
	collection_id Integer primary key,
    release_id Integer,
    album_id varchar(50),
    condition_type varchar(10),
    disk_format varchar(10),
    price double,
    purchase_date date,
    constraint release_id foreign key (release_id) references Releases(release_id) on delete set null,
    constraint album_id foreign key (album_id) references Album(album_id) on delete set null
    abcdd
    
);