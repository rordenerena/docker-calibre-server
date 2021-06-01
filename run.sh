#!/bin/bash

ruta="/opt/calibre/library"

echo $ruta

calibredb add --library-path $ruta -r $ruta

calibre-server $ruta
