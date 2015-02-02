#!/usr/bin/env python

import logging
import salt.client
import salt.log

salt.log.setup_console_logger()
logger = logging.getLogger(__name__)
logger.setLevel(logging.WARN)

salt_client = salt.client.Caller()
grains = salt_client.function('grains.items')

for grain in grains:
    if grain.startswith('os'):
        print 'Key {0} = {1}'.format(grain, grains.get(grain))
