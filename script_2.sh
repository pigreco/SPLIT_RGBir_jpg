#!/bin/bash
set -x

#creo una cartella di output
mkdir ./RGB
mkdir ./IR

for i in *.jpg; 
 do 
  #crei una variabile che usi per estrarre nome e estensione
  filename=$(basename "$i") #estrae nome file con estensione
  #estrai estensione
  extension="${filename##*.}"
  #estrai nome file
  filename="${filename%.*}" 
  gdal_translate -b 4  ./"$i" ./IR/"$filename"_ir.jpg;
	for k in 1 2 3
		do
			gdal_translate -b $k  ./"$i" ./RGB/"$filename"_$k.jpg;
		done
done
