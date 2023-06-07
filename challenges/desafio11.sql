SELECT a.album_name AS album, COUNT(*) AS favoritadas
FROM SpotifyClone.favorite_songs fs
JOIN SpotifyClone.songs_table s ON fs.song_id = s.song_id
JOIN SpotifyClone.albuns_table a ON s.album_id = a.album_id
GROUP BY a.album_id
ORDER BY favoritadas DESC, album ASC
LIMIT 3;
