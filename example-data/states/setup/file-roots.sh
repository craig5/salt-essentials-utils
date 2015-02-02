#!/bin/bash
sudo mkdir -p /etc/salt/master.d
rsync -Cavz master.d /etc/salt/
#sudo cp /srv/se-book/example-data/states/setup/file-roots.conf \
#	/etc/salt/master.d/
