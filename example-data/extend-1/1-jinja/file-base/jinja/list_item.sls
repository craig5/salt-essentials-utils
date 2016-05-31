{% set list1 = ['one', 'two', 'three'] %}
jinja_list_item:
  cmd.run:
  - name: echo "List item 2 is {{ list1[2] }}"
