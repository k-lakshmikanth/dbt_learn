
{% macro lk_test() %}
{% set students = ["lk","lucky","lakshmikanth"] %}
(
    {% for student in students %}
    SELECT '{{ loop.index }}' as id, '{{ student }}' as student_name
        {%if not loop.last %} 
        UNION 
        {% endif %}
    {% endfor %}
)
{% endmacro %}