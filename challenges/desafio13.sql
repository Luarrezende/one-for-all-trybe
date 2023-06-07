SELECT
  faixa_etaria,
  COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
  COUNT(DISTINCT fs.user_id, fs.song_id) AS total_favoritadas
FROM (
  SELECT
    users_table.user_id,
    users_table.user_age,
    CASE
      WHEN users_table.user_age <= 30 THEN 'Até 30 anos'
      WHEN users_table.user_age > 30 AND users_table.user_age <= 60 THEN 'Entre 31 e 60 anos'
      ELSE 'Maior de 60 anos'
    END AS faixa_etaria
  FROM SpotifyClone.users_table
) AS u
LEFT JOIN SpotifyClone.favorite_songs AS fs ON u.user_id = fs.user_id
GROUP BY faixa_etaria
ORDER BY
  CASE
    WHEN faixa_etaria = 'Até 30 anos' THEN 1
    WHEN faixa_etaria = 'Entre 31 e 60 anos' THEN 2
    ELSE 3
  END;
