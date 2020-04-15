FROM python:3.7-alpine
# MAINTAINER LuisQuinones

ENV PYTHONUNBUFFERED 1

RUN mkdir billdjpostgapi
COPY ./.devcontainer/requirements.txt /billdjpostgapi/requirements.txt

RUN apk update --no-cache
RUN apk add --update --no-cache postgresql-client 
      # This is necessary to install Pillow
      # \
      # jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev 
      # This is necessary to install Pillow
      # \
      # musl-dev zlib \
      # zlib-dev libjpeg
      
RUN pip install -r /billdjpostgapi/requirements.txt

RUN apk update --no-cache
RUN apk del .tmp-build-deps


RUN mkdir /app
WORKDIR /app
COPY ./app /app/

# RUN mkdir -p /vol/web/media
# RUN mkdir -p /vol/web/static
RUN adduser -D userlq
# RUN chown -R userlq:userlq /vol/
# RUN chmod -R 755 /vol/web
USER userlq