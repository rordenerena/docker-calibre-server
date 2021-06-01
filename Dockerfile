from ubuntu:20.04

RUN apt-get update -y \
  && DEBIAN_FRONTEND="noninteractive" apt-get install -y calibre \
  && apt-get clean \
  && rm -rf /var/cache/apt/* /var/lib/apt/lists/*

RUN apt-get update && apt-get install wget

EXPOSE 8080

RUN mkdir /opt/calibre && mkdir /opt/calibre/library && cd /opt/calibre/library && wget https://www.juntadeandalucia.es/export/drupaljda/Sistema%20Indicadores%20III%20PAPE.pdf

# RUN calibredb add --library-path /opt/calibre/library -r /opt/calibre/library

ADD run.sh /run.sh
RUN chmod +x /run.sh

WORKDIR /

VOLUME		["/opt/calibre/library"]
ENTRYPOINT	["/run.sh"] 
