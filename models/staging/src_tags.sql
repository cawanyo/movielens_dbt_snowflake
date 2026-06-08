WITH raw_tags AS (
    SELECT * FROM {{ source('staging', 'tags') }}
)

SELECT 
    userId AS user_id,
    movieId AS movie_id,
    tag,
    timestamp as tag_timestamp
FROM raw_tags