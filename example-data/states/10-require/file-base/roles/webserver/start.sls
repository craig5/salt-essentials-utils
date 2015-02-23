roles_webserver_start:
  service.running:
  - name: nginx
  - require:
    - pkg: nginx
