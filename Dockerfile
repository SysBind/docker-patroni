FROM alpine
MAINTAINER Asaf Ohayon <asaf@sysbind.co.il>
RUN apk add --update --no-cache postgresql python3 py3-psycopg2
RUN apk add --no-cache --virtual .build-deps gcc py3-pip python3-dev musl-dev linux-headers
RUN pip --no-cache-dir install patroni
RUN apk del .build-deps
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

