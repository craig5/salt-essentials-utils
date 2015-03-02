
def __virtual__():
    return True

__all_users = {
    'wilma': {'uid': 2001, 'full': 'Wilma Flintstone'},
    'fred': {'uid': 2002, 'full': 'Fred Flintstone'},
    'barney': {'uid': 2003, 'full': 'Barney Rubble'},
    'betty': {'uid': 2004, 'full': 'Betty Rubble'},
    'app': {'uid': 9001, 'full': 'App User'},
}

def ext_pillar(minion_id, pillar, *args, **kwargs):
    """
    Return the list of users for the given minion.
    """
    users = {}
    users['app'] = __all_users['app']
    if minion_id == 'minion1.example':
        pass
    elif minion_id == 'minion2.example':
        users['wilma'] = __all_users['wilma']
    elif minion_id == 'minion3.example':
        users['wilma'] = __all_users['wilma']
        users['barney'] = __all_users['barney']
        users['betty'] = __all_users['betty']
    elif minion_id == 'minion4.example':
        users['wilma'] = __all_users['wilma']
        users['barney'] = __all_users['barney']
        users['betty'] = __all_users['betty']
        users['fred'] = __all_users['fred']


    return {'my_users': users}
