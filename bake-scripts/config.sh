#! /bin/bash

set -e

CONFIG_FILE=/etc/systemd/system/audience-platform-hubot.service.d/environment.conf

#GRAPHITE_URL=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["configuration"]["graphite_url"]')
#REDIS_HOST=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["configuration"]["redis_host"]')
#REDIS_PORT=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["configuration"]["redis_port"]')
#EXPRESS_PASSWORD=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["secure_configuration"]["express_password"]')
#REDIS_PASSWORD=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["secure_configuration"]["redis_password"]')
#NPM_SECRET=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["secure_configuration"]["npm_secret"]')
#HUBOT_SLACK_TOKEN=$(cat $1 | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["secure_configuration"]["hubot_slack_token"]')

sed "s#{{GRAPHITE_URL}}#$GRAPHITE_URL#" -i $CONFIG_FILE
sed "s#{{REDIS_HOST}}#$REDIS_HOST#" -i $CONFIG_FILE
sed "s#{{REDIS_PORT}}#$REDIS_PORT#" -i $CONFIG_FILE
sed "s#{{EXPRESS_PASSWORD}}#$EXPRESS_PASSWORD#" -i $CONFIG_FILE
sed "s#{{REDIS_PASSWORD}}#$REDIS_PASSWORD#" -i $CONFIG_FILE
sed "s#{{NPM_SECRET}}#$NPM_SECRET#" -i $CONFIG_FILE
sed "s#{{HUBOT_SLACK_TOKEN}}#$HUBOT_SLACK_TOKEN#" -i $CONFIG_FILE
