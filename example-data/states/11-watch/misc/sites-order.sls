sites_first:
  file.managed:
  - name: /usr/share/nginx/html/first.html
  - source: salt://sites/src/first.html
  - user: www
  - mode: 0644
  - order: last
