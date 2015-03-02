{% set all_users = {
    'master.example': [],
    'minion1.example': [],
    'minion2.example': ['wilma'],
    'minion3.example': ['wilma', 'barney', 'betty'],
    'minion4.example': ['wilma', 'barney', 'betty', 'fred'],
} %}
{% set cur_users = salt['grains.filter_by'](all_users, grain='id') %}

show_users:
  cmd.run:
  - name: "echo 'User list is {{ cur_users }}'"
