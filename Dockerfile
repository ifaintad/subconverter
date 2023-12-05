FROM ghcr.io/metacubex/subconverter:latest
MAINTAINER ifAintAd <github.com/ifaintad>

run mkdir -p /base/custom

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY groups.txt rulesets.txt /base/snippets/
COPY pref.yml /base
EXPOSE 25500
VOLUME /base/custom/

WORKDIR /base

CMD subconverter
