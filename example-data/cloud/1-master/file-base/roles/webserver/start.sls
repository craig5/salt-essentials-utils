{% import 'roles/webserver/vars.jinja' as vars with context %}
include:
- .packages

roles_webserver_start:
  service.running:
  - name: nginx
  - require:
    - pkg: {{ vars.pkg_name }}
