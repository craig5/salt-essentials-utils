base:
  '*':
  - default
  - users

  'roles:webserver':
  - match: grain
  - roles.webserver
  - sites

  'master.example':
  - master
