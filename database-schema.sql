drop database if exists holobase;
create database holobase;
use holobase;

create table branches (
    branch_id VARCHAR(8) NOT NULL,
    branch_name VARCHAR(64),

    primary key (branch_id)
);

create table generations (
    gen_id VARCHAR(8) NOT NULL,
    branch_id VARCHAR (8) NOT NULL,
    gen_name VARCHAR(64),

    primary key (gen_id),
    foreign key (branch_id) references branches(branch_id) on delete restrict on update cascade                                                      
);

create table talents (
    talent_id VARCHAR(8) NOT NULL,
    gen_id VARCHAR(8) NOT NULL,
    talent_english_fname VARCHAR(20),
    talent_english_lname VARCHAR(20),
    talent_japanese_name VARCHAR(20),
    debut_date DATE,
    youtube_link VARCHAR(128),
    twitter_link VARCHAR(128),

    primary key (talent_id),
    foreign key (gen_id) references generations(gen_id) on delete restrict on update cascade
);

create table albums (
    album_id VARCHAR(8) NOT NULL,
    talent_id VARCHAR(8) NOT NULL,
    album_name VARCHAR(64),
    youtube_link VARCHAR(128),

    primary key (album_id),
    foreign key (talent_id) references talents(talent_id) on delete restrict on update cascade
);

create table tracks (
    track_id VARCHAR(8) NOT NULL,
    track_name VARCHAR(64),
    youtube_link VARCHAR(128),
    is_cover BOOLEAN,

    primary key (track_id)
);

create table concerts (
    talent_id VARCHAR(8) NOT NULL,
    concert_id VARCHAR(8) NOT NULL,
    concert_name VARCHAR(64),
    youtube_link VARCHAR(128),

    primary key (concert_id),
    foreign key (talent_id) references talents(talent_id) on delete restrict on update cascade
);

create table generation_to_track (
    track_id VARCHAR(8) NOT NULL,
    gen_id VARCHAR(8) NOT NULL,

    primary key (track_id, gen_id),
    foreign key (track_id) references tracks(track_id) on delete restrict on update cascade,
    foreign key (gen_id) references generations(gen_id) on delete restrict on update cascade
);

create table album_to_track (
    track_id VARCHAR(8) NOT NULL,
    album_id VARCHAR(8) NOT NULL,

    primary key (track_id, album_id),
    foreign key (track_id) references tracks(track_id) on delete restrict on update cascade,
    foreign key (album_id) references albums(album_id) on delete restrict on update cascade
);