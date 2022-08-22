gcc offline 설치
###Wget list
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/gcc-c++-4.8.5-44.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/gcc-4.8.5-44.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/libmpc-1.0.1-3.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/mpfr-3.1.1-4.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/libstdc++-devel-4.8.5-44.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/cpp-4.8.5-44.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/glibc-devel-2.17-317.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/glibc-headers-2.17-317.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/updates/x86_64/Packages/kernel-headers-3.10.0-1160.42.2.el7.x86_64.rpm
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/make-3.82-24.el7.x86_64.rpm
###

rpm -ivh *.rpm --nodeps --force

[root@centos work]# rpm -ivh *.rpm --nodeps --force
준비 중...                         ################################# [100%]
Updating / installing...
   1:mpfr-3.1.1-4.el7                 ################################# [ 11%]
   2:libmpc-1.0.1-3.el7               ################################# [ 22%]
   3:cpp-4.8.5-44.el7                 ################################# [ 33%]
   4:libstdc++-devel-4.8.5-44.el7     ################################# [ 44%]
   5:kernel-headers-3.10.0-1160.42.2.e################################# [ 56%]
   6:glibc-headers-2.17-317.el7       ################################# [ 67%]
   7:glibc-devel-2.17-317.el7         ################################# [ 78%]
   8:gcc-4.8.5-44.el7                 ################################# [ 89%]
   9:gcc-c++-4.8.5-44.el7             ################################# [100%]
[root@centos work]# gcc -v
Using built-in specs.
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/libexec/gcc/x86_64-redhat-linux/4.8.5/lto-wrapper
Target: x86_64-redhat-linux
Configured with: ../configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info --with-bugurl=http://bugzilla.redhat.com/bugzilla --enable-bootstrap --enable-shared --enable-threads=posix --enable-checking=release --with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions --enable-gnu-unique-object --enable-linker-build-id --with-linker-hash-style=gnu --enable-languages=c,c++,objc,obj-c++,java,fortran,ada,go,lto --enable-plugin --enable-initfini-array --disable-libgcj --with-isl=/builddir/build/BUILD/gcc-4.8.5-20150702/obj-x86_64-redhat-linux/isl-install --with-cloog=/builddir/build/BUILD/gcc-4.8.5-20150702/obj-x86_64-redhat-linux/cloog-install --enable-gnu-indirect-function --with-tune=generic --with-arch_32=x86-64 --build=x86_64-redhat-linux
Thread model: posix
gcc version 4.8.5 20150623 (Red Hat 4.8.5-44) (GCC)
