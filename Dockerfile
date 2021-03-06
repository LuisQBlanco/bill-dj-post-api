FROM python:3.8-alpine
# MAINTAINER LuisQuinones

ENV PYTHONUNBUFFERED 1

# RUN mkdir billdjpostg
# COPY ./.devcontainer/requirements.txt /billdjpostg/requirements.txt

COPY requirements.txt /billdjpostg/

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
      
RUN pip install -r /billdjpostg/requirements.txt

RUN apk update --no-cache
RUN apk del .tmp-build-deps

RUN pip3 install -U pylint


# RUN fmkdir /billdjpostg
WORKDIR /billdjpostg
COPY ./app /billdjpostg/

# RUN mkdir -p /vol/web/media
# RUN mkdir -p /vol/web/static
RUN adduser -D userlq
# RUN chown -R userlq:userlq /vol/
# RUN chmod -R 755 /vol/web
USER userlq