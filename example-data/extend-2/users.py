'''
Return the list of users for each minion.
'''

__virtual_name__ = 'users'
def __virtual__():
    return __virtual_name__

import logging
logger = logging.getLogger(__name__)

_ALL_USERS = {
    'fred': 1001,
    'barney': 1002,
    'wilma': 1003,
    'betty': 1004,
    'app': 2001
}

_DEV_USERS = {
    'fred': 1001,
    'wilma': 1003,
    'app': 2001
}

def ext_pillar(minion_id, pillar, custom_args):

    pillar_data = {'users': {}}
    if minion_id == 'master.example':
        pillar_data['users'] = _ALL_USERS
    elif minion_id == 'minion2.example' or minion_id == 'minion4.example':
        pillar_data['users'] = _DEV_USERS
    return pillar_data


def show():
    return "Working."
if __name__ == '__main__':
    print ext_pillar('master.example', {}, {})
