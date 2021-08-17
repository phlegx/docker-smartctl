FROM debian:bullseye-slim

ENV SMARTMONTOOLS_VERSION 7.2-1

RUN apt-get update && apt-get install -y \
      smartmontools=$SMARTMONTOOLS_VERSION \
      && rm -rf /var/lib/apt/lists/*

CMD ["smartctl"]
