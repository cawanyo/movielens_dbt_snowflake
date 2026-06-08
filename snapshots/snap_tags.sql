{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshots',
        unique_key=['user_id', 'movie_id', 'tag'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidate_hard_deletes=true
    )
}}

SELECT 
    MD5(CONCAT(CAST(user_id AS STRING), '-', CAST(movie_id AS STRING), '-', CAST(tag AS STRING))) as raw_key,
    user_id,
    movie_id,
    tags as tag,
    CAST(tag_timestamp AS TIMESTAMP_NTZ) AS tag_timestamp

FROM {{ ref('src_tags') }}
LIMIT 100

{% endsnapshot %}