#!/usr/bin/env bash
#The package dcmtk needs to be installed for that to work. Some websites, like Arch Wiki, say dcmj2pnm is deprecated and dcm2img should be used instead but for my use cases dcmj2pnm works just fine.

#must install dcmtk from AUR

for name in *.dcm; 
do 
    newname=$(echo "$name" | rev | cut -f 2- -d '.' | rev)
    dcmj2pnm --write-jpeg --min-max-window "$name".dcm "$newname".jpg;
done
