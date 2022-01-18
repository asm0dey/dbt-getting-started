SELECT user_id, comment_text as content, 'comment' as content_type  FROM {{ ref('user_comments') }}
UNION ALL
SELECT user_id, post_text as content, 'post' as content_type FROM {{ ref('user_posts') }}