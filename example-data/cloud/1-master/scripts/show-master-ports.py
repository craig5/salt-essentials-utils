#!/usr/bin/env python
import salt.config
_MASTER_CONFIG_FILE = '/etc/salt/master'
master_config = salt.config.client_config(_MASTER_CONFIG_FILE)
print 'Return port: {0}'.format(master_config.get('ret_port'))
print 'Publish port: {0}'.format(master_config.get('publish_port'))
