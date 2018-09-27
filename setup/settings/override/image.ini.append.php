<?php /* #?ini charset="utf-8"?

[ImageMagick]
IsEnabled=true
ExecutablePath=/usr/bin
Executable=convert
Filters[]=strippaexif=-strip
Filters[]=customquality=-quality %1

Filters[]=thumb=-resize 'x%1' -resize '%1x<' -resize 50%
Filters[]=centerimg=-gravity center -crop %1x%2+0+0 +repage
Filters[]=strip=-strip
Filters[]=sharpen=-sharpen 0.5
Filters[]=geometry/scalemin=-geometry %1x%2^
Filters[]=forcecenter=-background %1 -gravity center -extent %2x%3

#centra l'immagine e la ritaglia
Filters[]=roundcenterimg=-gravity center -crop %1x%2+0+0 +repage
#applica la maschera
Filters[]=roundmask=extension/openpa_theme_2014/design/standard/images/round-mask.png -composite
#scontorna il bianco
Filters[]=roundtrans=-transparent White

[MIMETypeSettings]
# Set JPEG quality from 0 (worst quality, smallest file) to 100 (best quality, biggest file)
Quality[]=image/jpeg;70

[AliasSettings]
AliasList[]
AliasList[]=small
AliasList[]=medium
AliasList[]=large
AliasList[]=rss
AliasList[]=logo

[small]
Reference=
Filters[]
Filters[]=geometry/scaledownonly=100;160

[medium]
Reference=
Filters[]
Filters[]=geometry/scaledownonly=200;290

[large]
Reference=
Filters[]
Filters[]=geometry/scaledownonly=360;440

[rss]
Reference=
Filters[]
Filters[]=geometry/scale=88;31

[logo]
Reference=
Filters[]
Filters[]=geometry/scaleheight=36

*/ ?>