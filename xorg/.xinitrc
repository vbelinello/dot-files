xrdb -merge ~/.Xresources

while true; do
        xsetroot -name "$(sh ~/dot-files/info.sh)"
        sleep 5
done &

picom --config ~/.config/picom/picom.conf &
sh ~/dot-files/screen.sh
feh --bg-scale ~/wallpapers/vinland_saga.png ~/wallpapers/vertical.jpg

exec dwm

