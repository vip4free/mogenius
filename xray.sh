#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4a886fa5-7ec5-4198-b546-74ac4efa33e7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

