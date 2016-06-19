#!/bin/sh

EXTNAME="Dotlan Fatigue.safariextension"

mkdir -p "$EXTNAME"
for FILE in "fatigue.js" "functions.js" "ships.js" "style.css"; do
	cp -f "$FILE" "$EXTNAME/$FILE"
done
for IMGSIZE in 16 48 64 96 128; do
	cp -f "icon$IMGSIZE.png" "$EXTNAME/Icon-$IMGSIZE.png"
done
cp -f safari.plist "$EXTNAME/Info.plist"
