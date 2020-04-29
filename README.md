# Radarr Docker Image for Raspberry Pi [![Build Status](https://travis-ci.org/nelsonyaccuzzi/docker-rpi-radarr.svg?branch=master)](https://travis-ci.org/nelsonyaccuzzi/docker-rpi-radarr)

## Usage

```
docker run -d \
  --name radarr \
  -v /path/to/config:/config \
  -v /path/to/data:/data \
  -p 7878:7878 \
  --restart unless-stopped \
  nelsonyaccuzzi/docker-rpi-radarr
```
