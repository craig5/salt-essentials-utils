base:
  'os:CentOS':
  - match: grain
  - default.vim-enhanced

  'os:Ubuntu':
  - match: grain
  - default.vim

  'roles:webserver':
  - match: grain
  - roles.webserver
  - sites

  'roles:database':
  - match: grain
  - users.dba

  'myenv:stage':
  - match: grain
  - users.qa

  'myenv:dev':
  - match: grain
  - users.all
  - run_first
