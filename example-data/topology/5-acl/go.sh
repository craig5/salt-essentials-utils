#!/bin/bash
srcDir=/srv/se-book/example-data/topology/5-acl
fileRoot=/srv/salt/file/base
pillarRoot=/srv/salt/pillar/base
scriptsDir=/srv/salt/scripts
modulesDir=/srv/salt/modules
reactorDir=/srv/salt/reactor
runnerDir=/srv/salt/runner
confDir=/etc/salt/master.d

sudo mkdir -p $fileRoot
sudo mkdir -p $pillarRoot
sudo mkdir -p $scriptsDir
sudo mkdir -p $runnerDir

sudo rsync -Cavz --delete $srcDir/master.d/ $confDir
sudo rsync -Cavz --delete $srcDir/file-base/ $fileRoot
sudo rsync -Cavz --delete $srcDir/pillar-base/ $pillarRoot
sudo rsync -Cavz --delete $srcDir/scripts/ $scriptsDir
sudo rsync -Cavz --delete $srcDir/modules/ $modulesDir
sudo rsync -Cavz --delete $srcDir/reactor/ $reactorDir
sudo rsync -Cavz --delete $srcDir/runner/ $runnerDir

sudo service salt-master restart
