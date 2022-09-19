INSERT INTO genre (name)
VALUES
('pop song'),
('disco'),
('soul'),
('new wave'),
('funk');

INSERT INTO performer (performer_name)
VALUES
('Britney Jean Spears'),
('Kwon Bo-Ah'),
('Blue Sistem'),
('Cameo'),
('Boyz II Men'),
('Adam Ant'),
('Edward Earl "Eddie" Hazel'),
('Rufus Thomas');

INSERT INTO genre_performer
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5),
(6, 4, 6),
(7, 5, 7),
(8, 5, 8),
(9, 2, 1);

INSERT INTO album
VALUES
(1, 'album 1', 2017),
(2, 'album 2', 2018),
(3, 'album 3', 2018),
(4, 'album 4', 2019),
(5, 'album 5', 2019),
(6, 'album 6', 2020),
(7, 'album 7', 2020),
(8, 'album 8', 2021);

INSERT INTO performer_album
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8);

INSERT INTO track
VALUES
(1, 'Work Bitch', 4.11, 1),
(2, 'Alien', 3.91, 1),
(3, 'Woman', 2.83, 2),
(4, 'CAMO', 3.31, 2),
(5, 'my Bad Is Too Big', 3.26, 3),
(6, 'Magic Symphony', 3.6, 3),
(7, 'Word Up!', 5.93, 4),
(8, 'Candy', 5.63, 4),
(9, 'A Song For Mama', 5.01, 5),
(10, 'Hey Lover', 4.73, 5),
(11, 'Goody Too Shoes', 3.48, 6),
(12, 'Strip', 3.8, 6),
(13, 'I Want You', 9.43, 7),
(14, 'California Dreaming', 6.18, 7),
(15, 'Greasy Spoon', 2.6, 8);

INSERT INTO collection
VALUES
(1, 'collection 1', 2017),
(2, 'collection 2', 2018),
(3, 'collection 3', 2019),
(4, 'collection 4', 2020),
(5, 'collection 5', 2021),
(6, 'collection 6', 2017),
(7, 'collection 7', 2018),
(8, 'collection 8', 2019);

INSERT INTO track_collection
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5),
(11, 11, 6),
(12, 12, 6),
(13, 13, 7),
(14, 15, 8);