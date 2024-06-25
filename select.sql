SELECT name, duration FROM tracks
order by duration desc 
limit 1;

SELECT name FROM tracks
WHERE duration >= 3.5 * 60;

SELECT name, year FROM collections
WHERE year BETWEEN 2018 AND 2021;

SELECT name FROM artists
WHERE name NOT LIKE '% %'

SELECT name FROM tracks
WHERE name ILIKE 'my %' OR name ILIKE '% my' OR name ILIKE '% my %' OR name = 'my'
OR name ILIKE 'мой %' OR name ILIKE '% мой' OR name ILIKE '% мой %' OR name = 'мой';

SELECT name, COUNT(artistgenre.artist_id) FROM public."genres"
JOIN public."artistgenre" ON "genres".id = public."artistgenre".genre_id 
GROUP BY name;

SELECT COUNT(id) FROM public.tracks
WHERE album_id IN (SELECT id FROM public."albums" 
				   WHERE year BETWEEN 2019 AND 2020
				   );
				  
SELECT album_id, AVG(tracks.duration) FROM public."tracks"
GROUP BY album_id
ORDER BY album_id;


SELECT name FROM public."artists"
WHERE id NOT IN (SELECT artist_id FROM public."artistalbum"
				 WHERE album_id IN (SELECT id FROM public."albums"
								     WHERE year = 2020
									)
				 );

SELECT "collections".name FROM public."collections"
JOIN public."collectiontrack" ON public."collections".id = public."collectiontrack".track_id
JOIN public."tracks" ON public."collectiontrack".track_id = public."tracks".id
JOIN public."albums" ON public."tracks".album_id = public."albums".id
JOIN public."artistalbum" ON public."albums".id = public."artistalbum".album_id
JOIN public."artists" ON public."artistalbum".artist_id = public."artists".id
WHERE  public."artists".name = 'Сплин'
GROUP BY "collections".name;