{% import 'roles/webserver/vars.jinja' as vars with context %}
roles_webserver_packages:
  pkg.installed:
  - name: {{ vars.pkg_name }}
