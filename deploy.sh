#!/bin/bash
# source .env file as config
CONFIG_FILE="${BASH_SOURCE%/*}/.env"
set -a; source $CONFIG_FILE; set +a

DATE=$(date --rfc-3339=seconds)

# jekyll build _config_selfhosted.yml
docker run --rm -it \
    -v `pwd`:`pwd` \
    -w `pwd` \
    ruby:luqmanr.github.io \
        /bin/sh -c "git config --global --add safe.directory ${PWD}; \
        bundle; \
        bundle exec jekyll build --config _config_selfhosted.yml; \
        rm -r blog/; \
        mv _site/ blog/; \
        mkdir _site; \
        mv blog/ _site/"
rsync -chavzP --delete-after blog/* ${HOST}:${DEPLOY_PATH}/${BASE_URL}

echo "[${DATE}]" > build.log
git add build.log _config.yml _config_selfhosted.yml _posts/ _site/
git commit -m "update log time, config, and posts"
git push origin main

git push origin -d gh-pages; git subtree push  --prefix _site/ origin gh-pages