#!/bin/bash

curl -o sitemap.xml https://Sahill17.github.io/sitemap.xml

URLS=$(xmllint --xpath "//*[local-name()='url']/*[local-name()='loc']/text()" sitemap.xml)
echo "Extracted URLs:"
echo "$URLS"

echo "$URLS" | tr ' ' '\n' | grep -vE 'https://Sahill17.github.io/(tags|cheatsheet)/|^https://Sahill17.github.io/$' > urls.txt

LINKS=$(head -n 5 urls.txt | sed -E 's|https://Sahill17.github.io/([^/]+)/?$| - [\1](https://Sahill17.github.io/\1)|')

echo "Formatted Links:"
echo "$LINKS"
