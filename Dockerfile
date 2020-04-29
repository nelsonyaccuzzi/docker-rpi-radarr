FROM arm32v7/alpine:edge as tar

ARG RADARR_PATH=/var/lib/radarr
ARG RADARR_VERSION=0.2.0.1480

RUN apk add curl \
 && curl -L -O https://github.com/Radarr/Radarr/releases/download/v$RADARR_VERSION/Radarr.develop.$RADARR_VERSION.linux.tar.gz \
 && tar -xvzf Radarr.develop.*.linux.tar.gz \
 && mv Radarr /var/lib/ && mv /var/lib/Radarr /var/lib/radarr \
 && rm Radarr.develop.*.linux.tar.gz

FROM arm32v7/mono

ARG RADARR_PATH=/var/lib/radarr

COPY --from=tar $RADARR_PATH $RADARR_PATH

VOLUME ["/config", "/data"]

WORKDIR $RADARR_PATH

CMD ["mono", "Radarr.exe", "/nobrowser", "/data=/config"]
