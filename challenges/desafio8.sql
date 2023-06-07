SELECT a.artist_name AS artista, alb.album_name AS album
FROM artist_table a
JOIN albuns_table alb ON a.artist_id = alb.artist_id
WHERE a.artist_name = 'Elis Regina'
ORDER BY alb.album_name ASC;
