"""
Custom grains for the example hosts.
"""


import platform
import logging
logger = logging.getLogger(__name__)


def _get_hostname():
    hostname = platform.node()
    logger.debug('Using hostname: {0}'.format(hostname))
    return hostname

def set_myenv():
    """
    Set the 'myenv' grain based on the host name.
    """
    grains = {}
    hostname = _get_hostname()
    if hostname.startswith('minion1'):
        grains['myenv'] = 'prod'
    elif hostname.startswith('minion2'):
        grains['myenv'] = 'prod'
    elif hostname.startswith('minion3'):
        grains['myenv'] = 'stage'
    elif hostname.startswith('minion4'):
        grains['myenv'] = 'dev'
    return grains

def set_roles():
    """
    Set the 'roles" grain based on the host name.
    """
    grains = {}
    hostname = _get_hostname()
    if hostname.startswith('minion1'):
        grains['roles'] = ['webserver', 'appserver']
    elif hostname.startswith('minion2'):
        grains['roles'] = ['database']
    elif hostname.startswith('minion3'):
        grains['roles'] = ['webserver', 'appserver', 'database']
    elif hostname.startswith('minion4'):
        grains['roles'] = ['webserver', 'appserver', 'database']
    return grains
