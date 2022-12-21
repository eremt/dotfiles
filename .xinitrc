#!/bin/sh

setxkbmap -option caps:swapescape &
sxhkd &

if command -v redshift 2>&1 /dev/null; then
  URL_GEO='https://location.services.mozilla.com/v1/geolocate?key=geoclue'
  LAT_LNG=$(curl -sf "$URL_GEO" | awk 'OFS=":" {print $3,$5}' | tr -d ',}')
  if [ -n "$LAT_LNG" ]; then
    redshift -l "$LAT_LNG" -t 6500:3500 &
  fi
fi
