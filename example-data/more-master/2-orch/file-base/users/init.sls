{% set users = salt['pillar.get']('my_users', {}) %}
{% for login in users.keys() %}
{% set cur_user = users.get(login, {}) %}
{% set uid = cur_user.get('uid', none) %}
{% set full_name = cur_user.get('full', none) %}
users_{{ login }}:
  user.present:
  - name: {{ login }}
  - fullname: {{ full_name }}
  - uid: {{ uid }}
{% endfor %}

include:
- .www
