WITH raw_links AS (
    SELECT * FROM {{ source('staging', 'links') }}
)

SELECT 
    movieId AS movie_id,
    IMDBID AS imdb_id,
    TMDBID AS tmdb_id
FROM raw_links