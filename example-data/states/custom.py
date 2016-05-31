
import salt.exceptions

def enforce_custom_state(name, foo, bar=True):
    ret = {
        'name': name
        'changes': {},
        'result': False,
        'comment': ''
    }
    if bar == True and foo.startswith('Foo'):
        raise salt.exceptions.SaltInvocationError(
            'Argument "foo" cannot start with "Foo".'

    current_state = __salt__['
