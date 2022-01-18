with user_posts as (
    select *
    from {{ ref('user_posts') }}
)
select up.post_id post_id,
       up.user_id user_id,
       up.user_name username,
up.post_text post_text,
c.id comment_id,
c.content comment_text
from user_posts up, comment c
where c.post=up.post_id