# Radarr Docker Image for Raspberry Pi 
![Travis (.org)](https://img.shields.io/travis/nelsonyaccuzzi/docker-rpi-radarr?style=flat-square)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/nelsonyaccuzzi/docker-rpi-radarr?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/nelsonyaccuzzi/docker-rpi-radarr?style=flat-square)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/nelsonyaccuzzi/docker-rpi-radarr?sort=semver&style=flat-square)

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
