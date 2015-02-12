#!/usr/bin/env python

import logging
import salt.client
import salt.log
import salt.config

min_config = salt.config.minion_config('/etc/salt/minion')

min_config['file_client'] = 'local'

salt.log.setup_console_logger()
logger = logging.getLogger(__name__)
logger.setLevel(logging.WARN)

salt_client = salt.client.Caller(mopts=min_config)
grains = salt_client.function('grains.items')

for grain in grains:
    if grain.startswith('os'):
        print 'Key {0} = {1}'.format(grain, grains.get(grain))
