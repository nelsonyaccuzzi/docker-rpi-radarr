ARG RADARR_PATH=/var/lib/radarr

FROM arm32v7/alpine:edge as tar

ARG RADARR_PATH
ARG VERSION

RUN apk add curl \
 && curl -L -O https://github.com/Radarr/Radarr/releases/download/v$VERSION/Radarr.master.$VERSION.linux.tar.gz \
 && tar -xvzf Radarr.master.*.linux.tar.gz \
 && mkdir $RADARR_PATH && mv Radarr/* $RADARR_PATH \
 && rm Radarr.master.*.linux.tar.gz

FROM arm32v7/mono

ARG RADARR_PATH

COPY --from=tar $RADARR_PATH $RADARR_PATH

WORKDIR $RADARR_PATH

CMD ["mono", "Radarr.exe", "/nobrowser", "/data=/config"]
