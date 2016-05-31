#!/usr/bin/env python

import salt.config

_MASTER_CONFIG_FILE = '/etc/salt/master'

master_config = salt.config.client_config(_MASTER_CONFIG_FILE)

print 'Custom data: {0}'.format(master_config.get('my_custom'))
