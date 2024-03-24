use holobase;

insert into branches (branch_id, branch_name) 
values ("01000000", "HololiveJP"), 
       ("02000000", "HololiveEN"),
       ("03000000", "HololiveID"),
       ("04000000", "HololiveDEV_IS");

insert into generations (gen_id, branch_id, gen_name)
values ("01001000", "01000000", "Gen0"),
       ("01006000", "01000000", "NePoLaBo"),
       ("02001000", "02000000", "holoMyth"),
       ("03003000", "03000000", "holoh3ro"),
       ("04001000", "04000000", "ReGLOSS");

insert into talents (talent_id, gen_id, talent_english_fname, talent_english_lname, talent_japanese_name, debut_date, youtube_link, twitter_link)
values ("01001001", "01001000", "Suisei", "Hoshimachi", "星街すいせい", "2018-03-22", "https://www.youtube.com/channel/UC5CwaMl1eIgY8h02uZw7u8A", "https://twitter.com/suisei_hosimati"), 
       ("01001002", "01001000", "AZKi", null, null, "2018-11-15", "https://www.youtube.com/channel/UC0TXe_LYZ4scaW2XMyi5_kw", "https://twitter.com/AZKi_VDiVA"),
       ("01001003", "01001000", "Sora", "Tokino", "ときのそら", " 2017-09-07", "https://www.youtube.com/channel/UCp6993wxpyDPHUpavwDFqgg", "https://twitter.com/tokino_sora"),
       ("01006001", "01006000", "Botan", "Shishiro", "獅白ぼたん", "2020-08-14", "https://www.youtube.com/channel/UCUKD-uaobj9jiqB-VXt71mA/", "https://twitter.com/shishirobotan"),
       ("01006002", "01006000", "Polka", "Omaru", "尾丸ポルカ", "2020-08-16", "https://www.youtube.com/channel/UCK9V2B22uJYu3N7eR_BT9QA/", "https://twitter.com/omarupolka"),
       ("02001001", "02001000", "Kiara", "Takanashi", "小鳥遊キアラ", "2020-09-12", "https://www.youtube.com/channel/UCHsx4Hqa-1ORjQTh9TYDhww", "https://twitter.com/takanashikiara"),
       ("02001002", "02001000", "Amelia", "Watson", "ワトソン・アメリア", "2020-09-13", "https://www.youtube.com/channel/UCyl1z3jo3XHR1riLFKG5UAg", "https://twitter.com/watsonameliaEN"),
       ("03003001", "03003000", "Zeta", "Vestia", "ベスティア・ゼータ", "2022-03-25", "https://www.youtube.com/@VestiaZeta", "https://twitter.com/vestiazeta"),
       ("04001001", "04001000", "Ririka", "Ichijou", "一条莉々華", "2023-09-09", "https://www.youtube.com/@IchijouRirika", "https://twitter.com/ichijouririka");

insert into albums (album_id, talent_id, album_name, youtube_link) 
values ("00000001", "01001001", "Specter", "https://www.youtube.com/watch?v=r1ZVPTCOCSQ&list=OLAK5uy_lMmU0s0Cy7jnLSImMkl_aLHFTnQ2K5WCE"),
       ("00000002", "01001002", "Sincerely", "https://www.youtube.com/playlist?list=OLAK5uy_kk0Kio63mkDa7TeDdFLegxXRgUwTtmzRw"),
       ("00000003", "01001003", "STAR STAR☆T", "https://www.youtube.com/playlist?list=OLAK5uy_k4d27Clme3QApX6yWFSyfnAm4MZjQVHrA"),
       ("00000004", "01006001", "Vampire", null),
       ("00000005", "01006002", "HOLOGRAM CIRCUS", null),
       ("00000006", "02001001", "Point of View", "https://www.youtube.com/playlist?list=OLAK5uy_lv1JlMsabUlWH11GLfHBWkYAfuEfGuYLY"),
       ("00000007", "02001002", "KING", null),
       ("00000008", "03003001", "You`re mine", null),
       ("00000009", "04001001", "アイドル", null);

insert into tracks (track_id, track_name, youtube_link, is_cover)
values ("00000001", "7days", "https://www.youtube.com/watch?v=PcH8jff5kO0", false), 
       ("00000002", "デビュタントボール", "https://www.youtube.com/watch?v=lBM2j13sdOs", false),
       ("00000003", "Sincerely", "https://www.youtube.com/watch?v=XRanmtPhSU", true),
       ("00000004", "Star,star,start", "https://www.youtube.com/watch?v=VCsWgOMu4_8", false), 
       ("00000005", "Vampire", "https://www.youtube.com/watch?v=SNX6Gck9UIE", true),
       ("00000006", "HOLOGRAM CIRCUS", "https://www.youtube.com/watch?v=LQ_eazT56FA", false),
       ("00000007", "The Great Wanderer", "https://www.youtube.com/watch?v=H_Q8hB7v6qw", false),
       ("00000008", "Retrospective", "https://www.youtube.com/watch?v=oKfKokIKqZw", false),
       ("00000009", "KING", "https://www.youtube.com/watch?v=1f_LwO9wKK0", true),
       ("00000010", "You`re mine", "https://www.youtube.com/watch?v=KFFtUqQVLrI", false),
       ("00000011", "アイドル", "https://www.youtube.com/watch?v=auxGGI7FJ9k", true),
       ("00000012", "瞬間ハートビート", "https://www.youtube.com/watch?v=Ix_uXN_ybxc", false),
       ("00000013", "id:entity voices", "https://www.youtube.com/watch?v=sWB2jpd333Q", true),
       ("00000014", "Take Me Home, Country Roads", "https://www.youtube.com/watch?v=I1cdQp5uz5s", true);

insert into album_to_track (album_id, track_id) 
values ("00000001", "00000001"),
       ("00000001", "00000002"),
       ("00000002", "00000003"),
       ("00000003", "00000004"),
       ("00000004", "00000005"),
       ("00000005", "00000006"),
       ("00000006", "00000007"),
       ("00000006", "00000008"),
       ("00000007", "00000009"),
       ("00000008", "00000010"),
       ("00000009", "00000011");

insert into concerts (talent_id, concert_id, concert_name, youtube_link) 
values ("01001001", "00000001", "SheenderelaDay", "https://www.youtube.com/watch?v=i0vqoGF6xFo"),
       ("01001002", "00000002", "ゲスト：ときのそら / 星街すいせい", "https://www.youtube.com/watch?v=y3Ed1eCwuOA"),
       ("01001003", "00000003", "想いをこめて届ける3D配信", "https://www.youtube.com/watch?v=TjGC7Jzc5ns"),
       ("01006001", "00000004", "ミッションをクリアせよ", "https://www.youtube.com/watch?v=tUJ0atwgQ48"),
       ("01006002", "00000005", "ポルカおるよ", "https://www.youtube.com/watch?v=GnW76d1A3YQ"),
       ("02001001", "00000006", "End of the Year", "https://www.youtube.com/watch?v=5LNv7CzFJgc");
       
       
insert into generation_to_track (track_id, gen_id) 
values ("00000012", "04001000"),
       ("00000013", "03003000"),
       ("00000014", "02001000");