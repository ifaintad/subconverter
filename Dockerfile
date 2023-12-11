FROM ghcr.io/metacubex/subconverter:latest
MAINTAINER ifAintAd <github.com/ifaintad>

run mkdir -p /base/custom

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    sed -i \
    -e 's/skip_cert_verify_flag = true/skip_cert_verify_flag = false/' \
    -e 's/enable_cache = false/enable_cache = true/' \
    -e 's/cache_subscription = 60/cache_subscription = 600/' \
    -e 's/cache_config = 300/cache_config = 600/' \
    -e 's/cache_ruleset = 21600/cache_ruleset = 900/' \
    /base/pref.toml

COPY groups.txt rulesets.txt /base/snippets/
EXPOSE 25500
VOLUME /base/custom/

WORKDIR /base

CMD subconverter
