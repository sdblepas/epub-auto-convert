#!/bin/sh

cd /home/sdblepas/Videos/Upload/

count=`ls -1 *.epub 2>/dev/null | wc -l`
if [ $count -eq 0 ]; then
        echo "File not found!"
        exit 0
fi
cd /home/sdblepas/Videos/Upload/

for book in *.epub
do
        echo "Converting $book"
        ebook-convert "$book" "$(basename "$book" .epub).mobi"
        VALUE=$(calibredb add basename "$book" --with-library=~/calibre-library)
        ID=$(echo $VALUE | cut -d':' -f 2)
        calibredb add_format $ID "$(basename "$book" .epub).mobi" --with-library=~/calibre-library
done
