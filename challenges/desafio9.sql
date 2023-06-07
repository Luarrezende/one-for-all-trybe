SELECT COUNT(*) AS musicas_no_historico
FROM historic_table h
JOIN users_table u ON h.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';
