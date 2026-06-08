{% macro no_nulls_in_columns(model) %}
    {% set columns = adapter.get_columns_in_relation(model) %}
    SELECT * FROM {{ model }}
    WHERE
    {% for column in columns %}
      {{ column }} IS NULL OR
    {% endfor %}
    FALSE
{% endmacro %}