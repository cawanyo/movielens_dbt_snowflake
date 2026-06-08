WITH src_movies AS (
    SELECT * FROM {{ ref('src_movies') }}
)
SELECT 
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres, '|') AS movie_array,
    genres 

FROM src_movies