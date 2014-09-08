#!/usr/bin/env python
"""Setup script for sample package (python3)."""


import distutils.core
import glob
import os
import setuptools
import sys


_NAME = 'salt_essentials_utils'
_PYTHON_PKG_NAME = 'salt_essentials'
_PKG_VERSION = '0.0.3'
_PKG_DESCRIPTION = 'Suite of utilities and scripts for Salt Essentials.'
_PKG_AUTHOR_NAME = 'Craig Sebenik'
_PKG_AUTHOR_EMAIL = 'craig5@pobox.com'
_PKG_URL = 'http://www.friedserver.com/'
_PKG_KEYWORDS = ['salt', 'salt-stack', 'tutorial']
#
_BASE_DIR = os.path.dirname(os.path.abspath(__file__))
_LIB_DIR = 'lib'
_BIN_DIR = 'bin'
_DATA_DIR = 'data'
_DATA_LIST = ['{0}/*'.format(_DATA_DIR)]
_SCRIPTS = glob.glob('{0}/[a-z]*'.format(_BIN_DIR))

print "scripts", _SCRIPTS

setuptools.setup(
    name=_NAME,
    version=_PKG_VERSION,
    description=_PKG_DESCRIPTION,
    author=_PKG_AUTHOR_NAME,
    author_email=_PKG_AUTHOR_EMAIL,
    package_dir={'': _LIB_DIR},
    packages=[_PYTHON_PKG_NAME],
    package_data={'': _DATA_LIST},
    scripts=_SCRIPTS,
    url=_PKG_URL,
    keywords=_PKG_KEYWORDS,
)

# End of file.
