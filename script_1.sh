#!/bin/bash
set -x

#creo una cartella di output
mkdir ./RGB
mkdir ./ir

for i in *.jpg; 
 do 
  #crei una variabile che usi per estrarre nome e estensione
  filename=$(basename "$i")
  #estrai estensione
  extension="${filename##*.}"
  #estrai nome file
  filename="${filename%.*}" 
     gdal_translate -b 1  ./"$i" ./RGB/"$filename"_R.jpg;
     gdal_translate -b 2  ./"$i" ./RGB/"$filename"_G.jpg;
     gdal_translate -b 3  ./"$i" ./RGB/"$filename"_B.jpg;
     gdal_translate -b 3  ./"$i" ./ir/"$filename"_IR.jpg;
 done
