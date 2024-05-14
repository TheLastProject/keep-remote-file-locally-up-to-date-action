FROM node:20

RUN apt-get update && apt-get install -y \
    coreutils \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git config --global --add safe.directory /github/workspace

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
