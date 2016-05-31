#!/usr/bin/env python

import getpass
import logging
import sys
import salt.client
import salt.log

salt.log.setup_console_logger()
logger = logging.getLogger(__name__)
logger.setLevel(logging.WARN)

try:
    master_client = salt.client.LocalClient()
    all_cmds = master_client.cmd('*', 'cmd.run', ['uptime'])
except salt.exceptions.EauthAuthenticationError:
    logger.fatal('Could not authenitcate with master.')
    cur_user = getpass.getuser()
    if cur_user != 'root':
        logger.fatal('Trying running as root (sudo).')
    sys.exit(1)

print all_cmds
