FROM stilleshan/subconverter:latest
MAINTAINER Stille <stille@ioiox.com>

ENV VERSION 0.7.2

COPY groups.txt rulesets.txt /base/snippets/

EXPOSE 25500
VOLUME /base

WORKDIR /base

CMD subconverter
