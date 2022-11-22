#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ce51d6b4-17f8-48f5-b100-b6fa5751248d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

