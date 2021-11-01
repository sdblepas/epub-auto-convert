# epub-auto-convert
auto convert epub on specific location and add to calibre

## TO DO
Automate change paths in script 
remove user name from path and add $USER.
### watcher.sh

This script is waiting for new epub to be added to a downlod direcyory 
you need to change the download directy path with yours.
And change the path to the copy dir.
```
#set path to watch
DIR="/home/sdblepas/Videos/epub"
# set path to copy the script to
target_dir="/home/sdblepas/Videos/Upload"
```
every epub that will be downloaded to the first dir will be copied to the second one.

run like this nohup ./watcher.sh 0<&- &>/dev/null &

### calibre_add.sh

This script will take all the epubs in the copy dir (path should can be changed) and convert them to .mobi
It will then add both format to calibre library 
you can run it via crontab

You need to chmod +x *.sh 
