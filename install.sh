#!/bin/sh

expect -c "
  spawn sh /tmp/setup.sh
  set i 0
  while {\$i <= 1000} {
    send \"\n\"
    incr i 1
  }
  expect {
    timeout {exit 1}
    \"Do you agree to the above terms and conditions? \"
  }
  send \"yes\n\"
  set i 0
  while {\$i <= 2} {
    send \"\n\"
    incr i 1
  }
  interact
"
