#!/usr/bin/env python

import salt.config

_MINION_CONFIG_FILE = '/etc/salt/minion'

minion_config = salt.config.minion_config(_MINION_CONFIG_FILE)

print 'Master: {0}'.format(minion_config.get('master'))
