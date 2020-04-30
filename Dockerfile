FROM python:3.7-alpine
# MAINTAINER LuisQuinones

ENV PYTHONUNBUFFERED 1

# RUN mkdir billdjpostg
COPY ./requirements.txt /billdjpostgtest/requirements.txt

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
      
RUN pip install -r /billdjpostgtest/requirements.txt

RUN apk update --no-cache
RUN apk del .tmp-build-deps

# RUN pip3 install -U pylint


# RUN mkdir /billdjpostg
WORKDIR /billdjpostgtest
COPY ./app /billdjpostgtest/

# RUN mkdir -p /vol/web/media
# RUN mkdir -p /vol/web/static
RUN adduser -D userlq
# RUN chown -R userlq:userlq /vol/
# RUN chmod -R 755 /vol/web
USER userlq