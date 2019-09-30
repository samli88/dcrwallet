#!/bin/sh
set -e

if [ $(echo "$1" | cut -c1) = "-" ]; then
  echo "$0: assuming arguments for dcrwallet"

  set -- dcrd "$@"
fi

if [ $(echo "$1" | cut -c1) = "-" ] || [ "$1" = "dcrwallet" ]; then
  mkdir -p "$DCRWALLET_DATA"
  chmod 0755 "$DCRWALLET_DATA"
  chown -R decred:decred "$DCRWALLET_DATA"

  echo "$0: setting appdata directory to $DCRWALLET_DATA"

  set -- "$@" --appdata="$DCRWALLET_DATA"
fi

if [ "$1" = "dcrwallet" ]; then
  echo
  exec su-exec decred "$@"
fi

echo
exec "$@"
