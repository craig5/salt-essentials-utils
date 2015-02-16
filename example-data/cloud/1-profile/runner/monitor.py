#!/usr/bin/env python

import salt.client


def procs(num_procs_raw):
    '''
    Show any minions that are above a certain number of processes.
    '''
    master_client = salt.client.LocalClient()
    num_procs = int(num_procs_raw)
    all_procs = master_client.cmd('*', 'cmd.run', ['ps -e | wc -l'])
    for minion in all_procs.keys():
        cur_procs = int(all_procs[minion])
        if cur_procs > num_procs:
            print 'Minion {0}: {1} > {2}'.format(minion, cur_procs, num_procs)
