#!/bin/sh

set -e

PACK_URL=https://keilpack.azureedge.net/pack

if [ -n "$PACK_NAMES" ]; then
  wget $PACK_URL/$PACK_NAMES
  wine Keil_v5/UV4/PackUnzip.exe -i $PACK_NAMES --no-gui
fi

exec /bin/bash
