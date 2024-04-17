{% macro my_macro() %}
    CREATE TABLE IF NOT EXISTS austin_bike.trips_per_property AS SELECT 'This macro is called post-hooked!' as message
{% endmacro %}