# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-07-11T13:08:22.218646506Z
FROM azul/zulu-openjdk-alpine:17-jre

LABEL "org.opencontainers.image.title"="smart-cache-cli"
LABEL "org.opencontainers.image.description"="The CLI tool for managing Redis Smart Cache"
LABEL "org.opencontainers.image.url"="https://github.com/slorello89/redis-smart-cache-cli"
LABEL "org.opencontainers.image.licenses"="MIT"
LABEL "org.opencontainers.image.version"="0.0.6"
LABEL "org.opencontainers.image.revision"="0c43ddf73c9dbde1140b7f033e9c531071d2d62c"


COPY assembly/ /

RUN unzip smart-cache-cli-0.0.6.zip && \
    rm smart-cache-cli-0.0.6.zip && \
    chmod +x smart-cache-cli-0.0.6/bin/smart-cache-cli


ENV PATH="${PATH}:/smart-cache-cli-0.0.6/bin"

ENTRYPOINT ["/smart-cache-cli-0.0.6/bin/smart-cache-cli"]
