-- 1
{% macro margin (turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}

--2

{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} )*100 , {{ precision }})
{% endmacro %}