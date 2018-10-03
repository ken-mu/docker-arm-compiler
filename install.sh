#!/bin/sh

expect -c "
  spawn sh /tmp/setup.sh
  expect \"default: yes] \"
  send \"yes\n\"
  interact
"
