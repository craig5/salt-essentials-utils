{% set list1 = ['one', 'two', 'three'] %}
jinja_list_all:
  cmd.run:
  - name: echo "List is {{ list1 }}"

jinja_list_2:
  cmd.run:
  - name: echo "List 2 is {{ list1[2] }}"
