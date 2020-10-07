FROM debian:buster
WORKDIR /tmp
COPY vendor/ta-lib-0.4.0-src.tar.gz /tmp
RUN apt update && apt install -y gcc make file
RUN tar -xvzf /tmp/ta-lib-0.4.0-src.tar.gz && \
  cd /tmp/ta-lib/ && \
  ./configure --prefix=/ta-lib && \
  make && \
  make install