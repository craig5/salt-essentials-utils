base:
  'os:CentOS':
  - match: grain
  - default.vim-enhanced

  'os:Ubuntu':
  - match: grain
  - default.vim

  'minion2.example':
  - user-wilma
