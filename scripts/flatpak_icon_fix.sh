#!/bin/bash

for f in $(find /var/lib/flatpak/app/ -depth -type f -name '*.desktop'); do
    sudo cp -v "$f" /usr/share/applications/$(basename "$f")
done

