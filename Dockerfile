FROM alpine:3.4

RUN apk add --update bash nodejs git && \
    npm cache clean && \
    rm -rf /var/cache/apk/*

RUN npm install -g ptsurbeleu/how2

VOLUME [ "/src/how2" ]

CMD [ "/bin/bash" ]