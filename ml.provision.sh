#!/bin/bash
yum install lsb-core-amd64 gdb libc.so.6 vim -y
cd /vagrant/
rpm -i MarkLogic-RHEL6-8.0-6.x86_64.rpm
/etc/init.d/MarkLogic start
