{% set my_list = ['a', 'b', 'c'] %}
{% for current in my_list %}
jinja_for_{{ current }}:
  cmd.run:
  - name: "echo 'Current value is {{ current }}'"
{% endfor %}
