WITH raw_ratings AS (
    SELECT * FROM {{ source('staging', 'ratings') }}
)

SELECT 
    userId AS user_id,
    movieId AS movie_id,
    rating,
    timestamp as rating_timestamp
FROM raw_ratings