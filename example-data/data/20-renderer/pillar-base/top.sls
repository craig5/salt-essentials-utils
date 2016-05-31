base:
  '*':
  - default

  'G@myenv:prod and G@roles:database':
  - match: compound
  - users.dba

  'myenv:stage':
  - match: grain
  - users.stage

  'myenv:dev':
  - match: grain
  - users.all
