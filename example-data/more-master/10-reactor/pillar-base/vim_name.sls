{% set vim_names = {
    'CentOS': 'vim-enhanced',
    'Ubuntu': 'vim',
} %}
vim_name: {{ salt['grains.filter_by'](vim_names, grain='os') }}
