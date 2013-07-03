puppet-ubuntu_12_04-work-machine
================================

Puppet scripts to setup machine for development (Ubuntu 12.04)

Install it
-------------

    sudo apt-get install git-core puppet

Clone it
------------

    git clone https://github.com/robertpyke/puppet-ubuntu_12_04-work-machine.git
    cd puppet-ubuntu_12_04-work-machine

Configure it
------------

    vim site.pp
    
Update the $user and $home variables

Run it
-----------

    sudo puppet apply site.pp --modulepath=./
