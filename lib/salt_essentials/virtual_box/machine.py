#
import logging


# This works for OSX. Unfortunately, that's all I have right now.
# TODO test on other platforms
_DEFAULT_VBOX_MANAGE = '/usr/bin/VBoxManage'


class Machine(object):

    def __init__(self, config):
        logger_name = self.__class__.__name__
        self.logger = logging.getLogger(logger_name)
        self.name = config.get('name', None)
        self.ram = config.get('ram', 0)
        self.domain = config.get('domain', None)
        self.disk_size = config.get('disk-size', 0)
        self.os = config.get('os', None)

    def show_info(self):
        self.logger.debug('Showing machine info: {0}'.format(self.name))
        print('Name: {0}'.format(self.name))
        print('  Domain:    {0}'.format(self.domain))
        print('  RAM:       {0}'.format(self.ram))
        print('  Disk Size: {0}'.format(self.disk_size))
        print('  OS:        {0}'.format(self.os))

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, value):
        self._name = value

    @property
    def ram(self):
        return self._ram

    @ram.setter
    def ram(self, value):
        self._ram = value

    @property
    def domain(self):
        return self._domain

    @domain.setter
    def domain(self, value):
        self._domain = value

    @property
    def disk_size(self):
        return self._disk_size

    @disk_size.setter
    def disk_size(self, value):
        self._disk_size = value

    @property
    def os(self):
        return self._os

    @os.setter
    def os(self, value):
        # XXX verify os is in the list of os's
        self._os = value

# End of file.
