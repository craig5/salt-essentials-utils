#!/usr/bin/env python


from __future__ import print_function
import argparse
import jinja2
from jinja2 import Template
import sys

ap = argparse.ArgumentParser()
ap.add_argument('file_names', nargs='+')
args = ap.parse_args()

for cur_file in args.file_names:
    contents = ""
    try:
        with open(cur_file, 'r') as fp:
            for line in fp.readlines():
                contents += line
    except IOError as e:
        print('Could not find file: {0}'.format(cur_file))
    tmpl = Template(contents)
    print(tmpl.render())

# End of file.
