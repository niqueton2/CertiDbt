{% macro fecha_id(t1) %}

(year({{ t1 }})*10000+month({{ t1 }})*100+day({{ t1 }}))

{% endmacro %}