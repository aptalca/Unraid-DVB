![https://linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)

#patch-utils

* `wget http://cyberelk.net/tim/data/patchutils/stable/patchutils-0.3.4.tar.xz`
* `tar xvf patchutils-0.3.4.tar.xz`
* `cd patchutils-0.3.4`
* `./configure --prefix=/usr`
* `make install DESTDIR=$(pwd)/patchutils-0.3.4`
* `cd $(pwd)/patchutils-0.3.4`
* `makepkg -l y -c n ../patchutils-0.3.4-x86_64-2.tgz`
* `installpkg ../patchutils-0.3.4-x86_64-2.tgz`

#Proc-ProcessTable

* `wget http://search.cpan.org/CPAN/authors/id/J/JW/JWB/Proc-ProcessTable-0.53.tar.gz`
* `tar xvf Proc-ProcessTable-0.53.tar.gz`
* `cd Proc-ProcessTable-0.53`
* `perl Makefile.PL`
* `make`
* `make install DESTDIR=$(pwd)/Proc-ProcessTable-0.53`
* `cd $(pwd)/Proc-ProcessTable-0.53`
* `makepkg -l y -c n ../Proc-ProcessTable-0.53-x86_64-2.tgz`
* `installpkg ../Proc-ProcessTable-0.53-x86_64-2.tgz`
