FROM busybox
MAINTAINER JoostvdB94 <someone@example.com>
ARG VERSION
WORKDIR /bin
RUN wget https://github.com/stedolan/jq/releases/download/jq-${VERSION}/jq-linux64 &&\
    mv /bin/jq-linux64 /bin/jq && \
    chmod a+x /bin/jq
ENTRYPOINT ["jq"]
CMD sh
