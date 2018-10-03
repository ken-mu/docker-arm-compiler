#!/usr/bin

expect -c "
spawn sh /tmp/setup.sh
expect \"password:\"
send \"yes\n\"
"
