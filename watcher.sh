#!/bin/bash
# set path to watch
DIR="/home/sdblepas/Videos/epub"
# set path to copy the script to
target_dir="/home/sdblepas/Videos/Upload"

inotifywait -m -r -e moved_to -e create "$DIR" --format "%f" | while read f

do
        echo $f
        # check if the file is a .epub file
        if [[ $f = *.epub ]]; then
           # if so, copy the file to the target dir
           cp "$DIR/$f" "$target_dir"
        fi
done
