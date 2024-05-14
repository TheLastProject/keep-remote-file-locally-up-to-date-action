FROM node:20

RUN apt-get update && apt-get install -y \
    coreutils \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
