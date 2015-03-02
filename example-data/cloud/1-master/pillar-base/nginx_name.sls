{% set vim_names = {
    'CentOS': 'nginx',
    'Ubuntu': 'nginx-full',
} %}
nginx_name: {{ salt['grains.filter_by'](vim_names, grain='os') }}
