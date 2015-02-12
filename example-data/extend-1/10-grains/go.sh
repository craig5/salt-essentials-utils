#!/bin/bash
srcDir=/srv/se-book/example-data/extend-1/10-grains
fileRoot=/srv/salt/file/base
pillarRoot=/srv/salt/pillar/base
scriptsDir=/srv/salt/scripts
confDir=/etc/salt/master.d

sudo mkdir -p $fileRoot
sudo mkdir -p $pillarRoot
sudo mkdir -p $scriptsDir

sudo rsync -Cavz --delete $srcDir/master.d/ $confDir
sudo rsync -Cavz --delete $srcDir/file-base/ $fileRoot
sudo rsync -Cavz --delete $srcDir/pillar-base/ $pillarRoot
sudo rsync -Cavz --delete $srcDir/scripts/ $scriptsDir

#sudo service salt-master restart
sudo salt '*' saltutil.sync_all
