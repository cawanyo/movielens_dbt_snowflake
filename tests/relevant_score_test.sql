-- SELECT
--   user_id,
--   movie_id,
--   relevance_score
-- FROM {{ ref('fct_genome_scores') }}
-- WHERE relevance_score > 0.5

{# {{ nextflix.no_nulls_in_columns(ref('fct_genome_scores')) }} #}