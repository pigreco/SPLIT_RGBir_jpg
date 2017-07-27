#### Roba da matti
<br>
<span style="color:gray">questo non è Power Point</span>
<br>
<span style="color:gray"></span>
<br>
<span style="color:gray"><a href="https://twitter.com/totofiandaca?lang=it" target="_blank">@totofiandaca</a></span>

+++

# SPLIT_RGBir_jpg 
script per splittare immagini jpg (rgb + ir) con banda infrarosso - bash shell di unix

+++ VVV

```
#!/bin/bash
set -x

#creo cartelle di output
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
```
---

## come fare con installazione QGIS da OSGeo4W

1. avviare `MSYS`;
2. navigare fino alla cartella che contiene le immagini; (se la cartella (rgb che contiene le immagini) è sul desktop: cd C:/Users/utente/Desktop/rgb)
3. copiare ed incollare lo `script` nella `shell`;
4. invio


+++

## link utili

[Guida rapida su GDAL/OGR](https://live.osgeo.org/it/quickstart/gdal_quickstart.html)

[Impara X in Y minuti - X=bash](https://learnxinyminutes.com/docs/it-it/bash-it/)

+++

Un grosso abbraccio al mio `mentore` [Andrea Borruso](https://twitter.com/aborruso?lang=it)

+++

[il mio canale YouTube](https://goo.gl/W7Oo3W)

+++

![Video](https://www.youtube.com/watch?v=QRhYHg227ZU)

+++

[il mio blog](https://pigrecoinfinito.wordpress.com/)

+++

# whoIam

<span style="color:red">Sono un ingegnere con la passione del GIS</span>

---

![](./img/logo.png)

+++

## Spazi

- FB: [Facebook](https://www.facebook.com/pigreco314)
- repo: [github](https://github.com/pigreco/OpenData-da-riga-di-comando)

+++

## software che uso

- QGIS
- PostgreSQL/PostGIS
- SQLite/SpatiaLite
- GRASS GIS
- SAGA GIS
- ec...

+++

![](./img/logo_evolution.png)

+++

#Totò Fiandaca

---

![](https://media.giphy.com/media/pUgwLxmGW3S7K/giphy.gif)

+++
![GitPitch](https://gitpitch.com/assets/badge.svg)](https://gitpitch.com/pigreco/SPLIT_RGBir_jpg/master?grs=github&t=white)
