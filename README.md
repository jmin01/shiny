# Deploying Shiny Apps

This project contains a sample shiny app and a dockerfile to build and run the app

## Dependencies

- Docker
- git

```zsh
git clone https://github.com/jmin01/shiny-docker.git
docker build --platform=linux/amd64 -t shiny-app .
docker run --platform=linux/amd64 -p 8180:8180 shiny-app:latest
```
