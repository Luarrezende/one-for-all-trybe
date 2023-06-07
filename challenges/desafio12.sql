SELECT
  artist_table.artist_name AS artista,
  CASE
    WHEN COUNT(fs.song_id) >= 5 THEN 'A'
    WHEN COUNT(fs.song_id) >= 3 AND COUNT(fs.song_id) <= 4 THEN 'B'
    WHEN COUNT(fs.song_id) >= 1 AND COUNT(fs.song_id) <= 2 THEN 'C'
    ELSE '-'
  END AS ranking
FROM
  SpotifyClone.artist_table
LEFT JOIN
  SpotifyClone.albuns_table ON artist_table.artist_id = albuns_table.artist_id
LEFT JOIN
  SpotifyClone.songs_table ON albuns_table.album_id = songs_table.album_id
LEFT JOIN
  SpotifyClone.favorite_songs AS fs ON songs_table.song_id = fs.song_id
GROUP BY
  artist_table.artist_name
ORDER BY
  COUNT(fs.song_id) DESC,
  artist_table.artist_name ASC;
