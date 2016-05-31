{% from "jinja/vars.jinja" import my_var as the_var with context %}
jinja_from:
  cmd.run:
  - name: "echo 'The var is {{ the_var }}'"
