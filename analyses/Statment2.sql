{#
{% set my_cool_string = 'wow! cool!' %}
{% set my_second_cool_string = 'this is jinja!' %}
{% set my_cool_number = 100 %}

{{ my_cool_string}}  {{ my_second_cool_string }} I want to write Jinja for {{my_cool_number}} 

 
{% set my_animals = ["lemur", 'wolf', 'panther', 'tardigrade'] %}

{{ my_animals[0] }}

{% for animal in my_animals %}

    My favorite animal is {{ animal}}

{% endfor %}
 
{% set date_minus_five = dbt.dateadd('day', -5, from_date_or_timestamp='current_date') %} 


select {{ date_minus_five }}

{% set temperature = 75 %}

{% if temperature < 65 %}
    Time for a cappuccino!
{% else %}
    Time for a cold brew!
{% endif %}
 

{%- set foods = ['carrot', 'hotdog', 'cucumbrer', 'bell pepper'] -%}

{% for food in foods %}
    {%- if food == 'hotdog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetable' -%}
    {%- endif -%}

    The humble {{ food }} is my favorite {{ food_type }}
{% endfor %}


#}

{%-  set websters_dict = {
    'word': 'data',
    'speech_part' : 'noun',
    'definition' : 'if you know you know'
} -%}

{{ websters_dict['word']}} ({{ websters_dict['speech_part']}}): defined as "{{ websters_dict['definition']}}"