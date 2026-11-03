#!/bin/sh
echo "$XRAY_CONFIG" | sed "s/\"port\": *8080/\"port\": $PORT/" > /tmp/config.json
exec xray run -c /tmp/config.json

