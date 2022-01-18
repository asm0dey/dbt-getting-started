SELECT
    u.id user_id,
    c.content comment_text,
    u.username username,
    c.id comment_id
FROM {{ ref('user') }} u, comment c
WHERE c.author = u.id