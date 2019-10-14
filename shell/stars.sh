#!/bin/sh
hostnamectl set-hostname $1.qf.com
sed -i 's/236.128$/236.$2/' /etc/sysconfig/network-scripts/ifcfg-ens33
ifdown ens33;ifup ens33
