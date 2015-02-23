{% set list1 = ['one', 'two', 'three'] %}
jinja_list:
  cmd.run:
  - name: echo "List is {{ list1 }}"
