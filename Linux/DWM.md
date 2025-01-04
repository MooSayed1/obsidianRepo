
some error when compile 
```sh
sudo pacman -S libX11-devel --> #to download X11 by his resurces# <X11>
sudo pacman -S libXft-devel       #error <Xft>
sudo pacman -S libXinerama-devel  # error <Xinerama>
sudo pacman -S input-drivers      # 
sudo pacman -S pkg-config -->  #error <ft2build.h>
```

to make desktop enterface to dwm

```sh
cd usr/shar/xsessions
sudo vim DWM.desktop
#------------> Write This In The File
[Desktop Entry]
Encoding=UTF-8
Name=DWM
Comment=Dynamic Window Manger
Exec=/usr/local/bin/dwm
Icone=
Type=Application

```
