#!/bin/bash
sudo mkdir -p /srv/salt/file/base/default
cp /srv/se-book/example-data/states/3-default/packages.sls \
	/srv/salt/file/base/default
cp /srv/se-book/example-data/states/3-default/top.sls \
	/srv/salt/file/base/
