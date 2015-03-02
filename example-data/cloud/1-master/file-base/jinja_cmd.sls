{% set who = salt['cmd.run']('whoami') %}
jinja_cmd:
  cmd.run:
  - name: "echo 'Whoami gives {{ who }}'"
