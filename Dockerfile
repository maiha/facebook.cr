FROM crystallang/crystal:0.33.0-alpine
LABEL maintainer "maiha <maiha@wota.jp>"

RUN apk update && apk add --no-cache \
    curl-dev \
    curl-static \
    libidn2-static \
    nghttp2-static \
    && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apk/*

CMD ["crystal", "--version"]
