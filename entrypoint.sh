#!/bin/bash

set -e

PACK_URL=https://keilpack.azureedge.net/pack

if [ -n "$PACK_NAMES" ]; then
  ary=(`echo $PACK_NAMES`)
  for i in `seq 1 ${#ary[@]}`
  do
    echo "Installing ${ary[$i-1]}..."
    wget $PACK_URL/${ary[$i-1]}
    wine /root/.wine/drive_c/Keil_v5/UV4/PackUnzip.exe -i ${ary[$i-1]} --no-gui
    echo "Installed ${ary[$i-1]}."
  done
fi

exec /bin/bash
