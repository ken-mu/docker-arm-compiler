#!/bin/sh

expect -c "
  spawn sh /tmp/setup.sh
  expect \"Do you want to proceed with the installation?\"
  send \"\n\"

  expect -regexp \"^.+More.+$\"
  send \"q\"

  expect \"Do you agree to the above terms and conditions\"
  send \"yes\n\"

  expect \"Where would you like to install to\"
  send \"\n\"

  expect -regexp \"^.+does not exist, create.+$\"
  send \"\n\"

  expect eof
"
export PATH="$PATH:/usr/local/ARM_Compiler_5.06u6/bin64"
