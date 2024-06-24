INSERT INTO albums ("name","year") VALUES
	 ('25 кадр',2001),
	 ('В Диапазоне Между Отчаянием и Надеждой',2017),
	 ('Продавец кошмаров',2006),
	 ('Я и одиночество',2022),
	 ('Моя вселенная',2012),
	 ('Последний герой',2001),
	 ('Звезда по имени солнце',1989),
	 ('Кухня',2020);

INSERT INTO artists ("name") VALUES
	 ('КиШ'),
	 ('Порнофильм'),
	 ('Сплин'),
	 ('Баста'),
	 ('Три дня дождя'),
	 ('КИНО'),
	 ('PIZZA');

INSERT INTO tracks (album_id,"name",duration) VALUES
	 (1,'Выхода нет',227),
	 (1,'Моё сердце',250),
	 (2,'Русский Христос',276),
	 (7,'Пачка сигарет',226),
	 (6,'Хочу перемен',295),
	 (6,'Группа крови',240),
	 (2,'Я так соскучился',408),
	 (3,'Прыгну со скалы',190),
	 (8,'Фары',189),
	 (8,'Оружие',207);

INSERT INTO artistalbum (artist_id,album_id) VALUES
	 (1,3),
	 (2,2),
	 (3,1),
	 (4,5),
	 (6,6),
	 (7,8);

INSERT INTO genres ("name") VALUES
	 ('Рок'),
	 ('Поп'),
	 ('Рэп');
	
INSERT INTO artistgenre (artist_id,genre_id) VALUES
	 (1,1),
	 (2,1),
	 (4,3),
	 (6,1),
	 (3,1),
	 (7,2);

INSERT INTO collections ("name","year") VALUES
	 ('13 лет в Рок-н-Ролле',2007),
	 ('Зн@менатель',2000),
	 ('Вдыхай свежий воздух',2024),
	 ('Кино в кино',2002),
	 ('Собрание',2001),
	 ('Explore the universe ',2020);

INSERT INTO collectiontrack (collection_id,track_id) VALUES
	 (1,2),
	 (2,1),
	 (3,6),
	 (4,8);
