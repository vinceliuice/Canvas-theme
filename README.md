## Canvas Gtk Theme

Canvas is a flat Design theme for GTK 3, GTK 2.

based on Arc gtk theme
horst3180 - Arc gtk theme: https://github.com/horst3180/Arc-theme

## Info

### GTK+ 3.20 or later
- Set windows button on gnome for a better experience.

Gnome ≥ 3.22:

    gsettings set org.gnome.desktop.wm.preferences button-layout appmenu:minimize,maximize,close


### GTK2 engines requirment
- GTK2 engine Murrine 0.98.1.1 or later.
- GTK2 pixbuf engine or the gtk(2)-engines package.

Fedora/RedHat distros:

    yum install gtk-murrine-engine gtk2-engines

Ubuntu/Mint/Debian distros:

    sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

ArchLinux:

    pacman -S gtk-engine-murrine gtk-engines

Other:
Search for the engines in your distributions repository or install the engines from source.

## Install

Usage:  ./Install  [OPTIONS...]

|  OPTIONS:    | |
|:-------------|:-------------|
| -d, --dest   | destination directory (Default: $HOME/.themes) |
| -n, --name   | name (Default: Canvas) |
| -c, --color  | color variant(s) (standard/dark) |
| -h, --help   | Show this help |

**FOR EXAMPLE:**
```sh
./Install
```
(Install all themes)

## Screenshots
![1](https://github.com/vinceliuice/Canvas-theme/blob/images/screenshots/screenshot01.jpeg?raw=true)
![2](https://github.com/vinceliuice/Canvas-theme/blob/images/screenshots/screenshot02.jpeg?raw=true)
![3](https://github.com/vinceliuice/Canvas-theme/blob/images/screenshots/screenshot03.jpeg?raw=true)
![4](https://github.com/vinceliuice/Canvas-theme/blob/images/screenshots/screenshot04.jpeg?raw=true)
![5](https://github.com/vinceliuice/Canvas-theme/blob/images/screenshots/screenshot05.jpeg?raw=true)
