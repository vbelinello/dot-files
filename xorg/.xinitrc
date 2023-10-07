xrdb -merge ~/.Xresources

while true; do
        xsetroot -name "$(sh ~/dot-files/info.sh)"
        sleep 5
done &

feh --bg-fill --randomize ~/wallpapers/
picom --config ~/.config/picom/picom.conf &

exec dwm

