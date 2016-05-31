base:
  'os:CentOS':
  - match: grain
  - default.vim-enhanced

  'os:Ubuntu':
  - match: grain
  - default.vim

  'myenv:stage':
  - match: grain
  - users.qa

  'myenv:dev':
  - match: grain
  - users.all

  'roles:database':
  - match: grain
  - users.dba

  'roles:webserver':
  - match: grain
  - roles.webserver
  - sites
