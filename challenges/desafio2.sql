SELECT
    (SELECT COUNT(*) FROM SpotifyClone.songs_table) AS cancoes,
    (SELECT COUNT(*) FROM SpotifyClone.artist_table) AS artistas,
    (SELECT COUNT(*) FROM SpotifyClone.albuns_table) AS albuns;