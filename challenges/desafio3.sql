SELECT
    u.user_name AS pessoa_usuaria,
    COUNT(h.song_id) AS musicas_ouvidas,
    ROUND(SUM(s.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.users_table u
    JOIN SpotifyClone.historic_table h ON u.user_id = h.user_id
    JOIN SpotifyClone.songs_table s ON h.song_id = s.song_id
GROUP BY
    u.user_id
ORDER BY
    pessoa_usuaria ASC;
