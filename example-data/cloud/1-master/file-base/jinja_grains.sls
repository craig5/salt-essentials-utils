{% set name = grains['id'] %}
jinja_grains:
  cmd.run:
  - name: "echo 'My name is {{ name }}'"
