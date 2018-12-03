# Salt Essential Utilities

Suite of utilities and scripts for Salt Essentials (eel book)

http://shop.oreilly.com/product/0636920033240.do


## Installation

Start all of the virtual machines using `vagrant`:
```
cd virtual-machines
vagrant up
```

That will bring up 5 virtual machines: 1 salt master and 4 salt minions.

Then ssh into each VM and install salt:
```
vagrant ssh master
/srv/se-book/bin/setup
```

At this point, `salt` is installed on each VM.
