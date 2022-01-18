with customers as (
    select *
    from {{ ref('user') }}
)
select p.id       post_id,
       c.id       user_id,
       c.username user_name,
       p.content  post_text   
from customers c, post p
where c.id=p.author
         