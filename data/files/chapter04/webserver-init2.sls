httpd:
  pkg:
    - installed
  file:
    - managed
    - name: /etc/httpd/conf.d/virtual.conf
    - source: salt://webserver/virtual.conf
    - require:
      - pkg: httpd
