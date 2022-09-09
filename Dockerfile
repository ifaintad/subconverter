FROM stilleshan/subconverter:latest
MAINTAINER ifAintAd <github.com/ifaintad>

ENV VERSION 0.7.2

run mkdir -p /base/custom
COPY pref.yml /base
EXPOSE 25500
VOLUME /base/custom/

WORKDIR /base

CMD subconverter
