#!/usr/bin/env python

def show(match=None):
    '''
    Show the various runner data structures.
    '''
    if match:
        print 'Matching: {0}'.format(match)
        for opt in __opts__.keys():
            if match in opt:
                print 'Option found: {0}'.format(opt)
        for cmd in __salt__.keys():
            if match in cmd:
                print 'Command found: {0}'.format(cmd)
    else:
        print 'Showing all.'
        for opt in __opts__.keys():
            print opt
        for cmd in __salt__.keys():
            print cmd
