{% set my_dict = {'first': 'value 1', 'second': 'value 2'} %}
jinja_keys:
  cmd.run:
  - name: echo "Keys are {{ my_dict.keys() }}"
