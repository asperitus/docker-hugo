FROM golang:alpine3.9

ARG HUGO_VERSION=0.54.0
WORKDIR /bin

RUN wget -qO- "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" | tar xz

VOLUME /www

EXPOSE 1313

WORKDIR /www

ENTRYPOINT ["/bin/hugo", "server", "--bind=0.0.0.0", "-D", "-w"]