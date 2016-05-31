{% set myenv = 'stage' %}
data_update:
  salt.state:
  - tgt: 'G@roles:database and G@myenv:{{ myenv }}'
  - tgt_type: compound
  - sls: database.update

web_update:
  salt.state:
  - tgt: 'G@roles:webserver and G@myenv:{{ myenv }}'
  - tgt_type: compound
  - sls: roles.webserver
  - require:
    - salt: data_update
