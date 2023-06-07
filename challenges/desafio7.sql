SELECT
    a.artist_name AS artista,
    al.album_name AS album,
    COUNT(s.user_id) AS pessoas_seguidoras
FROM
    SpotifyClone.artist_table a
    JOIN SpotifyClone.albuns_table al ON a.artist_id = al.artist_id
    LEFT JOIN SpotifyClone.folow_table f ON a.artist_id = f.artist_id
    LEFT JOIN SpotifyClone.users_table s ON f.user_id = s.user_id
GROUP BY
    a.artist_id,
    al.album_id
ORDER BY
    pessoas_seguidoras DESC,
    artista,
    album;
