#!/bin/bash
docker run --rm -it \
--name jekyll-server \
-v `pwd`:`pwd` \
-w `pwd` \
-p 4091:4091 \
ruby:luqmanr.github.io \
    /bin/sh -c "git config \
        --global \
        --add safe.directory /home/luqmanr/workspace/personal/luqmanr.github.io; \
        bundle exec jekyll serve \
            -D \
            --watch \
            --livereload \
            _config_selfhosted.yml"