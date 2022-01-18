WITH users AS (
    SELECT u.id user_id, u.username username
    FROM {{ ref('user') }} u
)
SELECT user_id,
       username,
       count(post.id) post_number
FROM users,
     post
WHERE post.author = user_id
GROUP BY user_id, username