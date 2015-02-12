{% set simple_var = 'a simple variable' %}
jinja_var:
  cmd.run:
  - name: echo "Simple var is {{ simple_var }}"
