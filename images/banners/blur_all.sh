#!/bin/bash

for file in *banner.png *banner.jpg 
do
  gm convert -blur 40x40 "$file" ./blur/"$file"
done
