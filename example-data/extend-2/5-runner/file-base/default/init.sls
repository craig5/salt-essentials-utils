{% set vim_name = salt['pillar.get']('vim_name') %}
default_vim:
  pkg.installed:
  - name: {{ vim_name }}
