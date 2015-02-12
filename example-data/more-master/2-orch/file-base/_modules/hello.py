"""
A collection of simple examples.
"""


import logging
logger = logging.getLogger(__name__)


def world():
    """
    The simplest of examples.

    CLI Example::

        salt '*' hello.world
    """
    return 'Hello, world.'


def id():
    """
    Better example using the minion id.

    CLI Example::

        salt '*' hello.id
    """
    id = __grains__['id']
    logger.debug('Found grain id: {0}'.format(id))
    return 'Hello, {0}.'.format(id)
