#!/usr/bin/expect

spawn sh /tmp/setup.sh
expect "Do you want to proceed with the installation? [default: yes] "
send "yes\n"
interact
