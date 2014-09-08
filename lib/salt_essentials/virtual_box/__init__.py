#
import logging
#
from salt_essentials.virtual_box.machine import Machine

class Manager(object):

    def __init__(self, config):
        logger_name = self.__class__.__name__
        self.logger = logging.getLogger(logger_name)
        self.logger.debug('Logger initialized.')
        self.config = config
        self.machines = {}
        for mach in self.machines_config:
            cur_name = mach.get('name', None)
            if cur_name is None:
                self.logger.error('Machine name missing.')
                continue
            full_conf = self.build_config(cur_name, mach)
            new_mach = Machine(full_conf)
            self.add_machine(new_mach)
            self.machines[new_mach.name] = new_mach

    def build_config(self, name, config):
        self.logger.debug('Building config: {0}'.format(name))
        defaults = self.default_config
        # print 'DEFAULTS:',defaults
        cur_config = dict(defaults.items() + config.items())
        return cur_config

    def add_machine(self, machine):
        self.logger.debug('Adding machine: {0}'.format(machine.name))
        if machine.name in self.machines:
            self.logger.error('Duplicate machines: {0}'.format(machine.name))
            return
        self._machines[machine.name] = machine

    def get_machine(self, name):
        self.logger.debug('Getting machine: {0}'.format(name))
        if name not in self.machines:
            self.logger.error('Machine does not exist: {0}'.format(name))
            # TODO throw an exception
            return None
        return self.machines[name]

    @property
    def config(self):
        return self._config

    @config.setter
    def config(self, config):
        req_list = ['machines', 'defaults', 'operating-systems']
        for req in req_list:
            if req not in config:
                config[req] = dict()
        self._config = config

    @property
    def machines_config(self):
        return self.config.get('machines')

    @property
    def default_config(self):
        return self.config.get('defaults')

    @property
    def os_config(self):
        return self.config.get('operating-systems')

    @property
    def machines(self):
        return self._machines

    @machines.setter
    def machines(self, value):
        self._machines = value

    def __call__(self):
        self.logger.debug('Inside main: {0}'.format(self.__class__.__name__))

# End of file.
