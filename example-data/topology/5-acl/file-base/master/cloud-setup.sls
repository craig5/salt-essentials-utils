master_cloud_setup_packages:
  pkg.installed:
  - names:
    - salt-cloud
    - python-pip
  pip.installed:
  - names:
    - requests
  - upgrade: True
