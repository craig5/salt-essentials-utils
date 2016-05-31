{% set my_dict = {'first': 'value 1', 'second': 'value 2'} %}
jinja_dict_first:
  cmd.run:
  - name: echo "First item is {{ my_dict['first'] }}"
