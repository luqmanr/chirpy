# Steps to deply
1. Build docker
```
docker build . -t ruby:luqmanr.github.io
```
2. Create `.env` file, copy from `.env.example`
3. execute `./deploy.sh`