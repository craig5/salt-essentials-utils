{% import "vars.jinja" as vars with context %}
jinja_include:
  cmd.run:
  - name: "echo 'Included var is {{ vars.my_var }}'"

