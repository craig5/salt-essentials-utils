base:
  'os:CentOS':
  - match: grain
  - default.vim-enhanced

  'os:Ubuntu':
  - match: grain
  - default.vim

  'minion2.example':
  - users.dba

  'minion3.example':
  - users.dba
  - users.qa

  'minion4.example':
  - users.all
