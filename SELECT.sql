SELECT name, COUNT(performer_id) FROM genre g
JOIN genre_performer gp ON g.id = gp.genre_id 
GROUP BY name;

SELECT album_name, COUNT(track_name) FROM album a 
JOIN track t ON a.id = t.album_id
WHERE album_year IN (2019, 2020)
GROUP BY album_name;

SELECT album_name, AVG(track_duration) FROM album a 
JOIN track t ON a.id = t.album_id
GROUP BY album_name;

SELECT performer_name FROM performer p
JOIN performer_album pa ON p.id = pa.performer_id 
JOIN album a ON pa.album_id = a.id 
WHERE performer_name NOT IN (
	SELECT performer_name FROM performer p2 
	JOIN performer_album pa2 ON p2.id = pa2.performer_id 
	JOIN album a2 ON pa2.album_id = a2.id 
	WHERE a2.album_year IN (2020)
);

SELECT collection_name FROM collection c
JOIN track_collection tc ON c.id = tc.collection_id
JOIN track t ON tc.track_id = t.id 
JOIN album a ON t.album_id = a.id 
JOIN performer_album pa ON a.id = pa.album_id 
JOIN performer p ON pa.performer_id = p.id
WHERE p.performer_name IN ('Blue Sistem');

SELECT album_name FROM album a 
JOIN performer_album pa ON a.id = pa.album_id 
JOIN performer p ON pa.performer_id = p.id 
JOIN genre_performer gp ON p.id = gp.performer_id
GROUP BY album_name 
HAVING COUNT(gp.genre_id) > 1;

SELECT track_name FROM track t
LEFT JOIN track_collection tc ON t.id = tc.track_id 
WHERE collection_id IS NULL;

SELECT performer_name FROM performer p
JOIN performer_album pa ON p.id = pa.performer_id 
JOIN album a ON pa.album_id = a.id 
JOIN track t ON a.id = t.album_id
WHERE track_duration IN (SELECT MIN(track_duration) FROM track);

SELECT album_name FROM album a 
JOIN track t ON a.id = t.album_id
GROUP BY album_name 
HAVING COUNT(track_name) <= (
	SELECT COUNT(track_name) FROM album a 
	JOIN track t ON a.id = t.album_id
	GROUP BY album_name 
	ORDER BY COUNT(track_name)
	LIMIT 1
);
