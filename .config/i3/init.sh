file=`find /home/junaikin/Wallpapers -type f | shuf -n 1`
wal -i $file  
~/.config/polybar/launch.sh --shades
~/.config/polybar/shades/scripts/pywal.sh $file
