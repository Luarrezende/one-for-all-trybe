SELECT
    s.song_name AS cancao,
    COUNT(*) AS reproducoes
FROM
    SpotifyClone.historic_table h
    JOIN SpotifyClone.songs_table s ON h.song_id = s.song_id
GROUP BY
    h.song_id
ORDER BY
    reproducoes DESC, cancao ASC
LIMIT 2;
