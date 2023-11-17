#!/bin/bash
# source .env file as config
CONFIG_FILE="${BASH_SOURCE%/*}/.env"
set -a; source $CONFIG_FILE; set +a

DATE=$(date --rfc-3339=seconds)

jekyll build --config _config_selfhosted.yml
rsync -auvr _site/* ${HOST}:${DEPLOY_PATH}/${BASE_URL}

echo "[${DATE}]" > build.log
git add build.log _config.yml _posts/
git commit -m "update log time, config, and posts"
git push origin main