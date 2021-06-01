docker-calibre-server
=====================

Ubuntu 20.04 dockerized container with calibre preinstalled

Getting the image
-----------------
You can pull it with ``rordenerena/calibre-server:latest`` or clone this repo and build it.

All you need is the Dockerfile.


Using your library
------------------

This container exposes the volume **/opt/calibre/server** and the port **8080**


To allow calibre to run **your library** you have to **mount it as a volume** with ``-v \<\<host_library_location\>\>:/opt/calibre/library``


Running the container
------------------------

    docker run -p 80:8080 -v /mnt/data/calibre:/opt/calibre/library --name calibre rordenerena/calibre-server

