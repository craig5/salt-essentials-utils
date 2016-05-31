"""
A collection of simple examples.
"""


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
    return 'Hello, {0}.'.format(id)
