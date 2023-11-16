#!/bin/bash
jekyll build
scp -r _site/* bgn-wireguard:/var/www/luqmanr/discover.luqmanr.xyz/blog/
rm -r _site/
