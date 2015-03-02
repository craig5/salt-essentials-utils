{% set dir_list = [
    '/var/cache/salt',
    '/var/cache/salt/master',
    '/var/cache/salt/master/jobs',
    '/var/run/salt',
    '/var/run/salt/master',
    '/var/log/salt'
] %}

{% for cur in dir_list %}
{{ cur }}:
  file.directory:
  - user: root
  - group: root
  - mode: 0755
{% endfor %}

/var/log/salt/master:
  file.managed:
  - user: root
  - group: root
  - mode: 0666
