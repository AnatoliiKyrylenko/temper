# temper
<p align="center">temper | BASH SCRIPT</p>
<p align="center">
  <img src ="https://github.com/AnatoliiKyrylenko/temper/blob/master/temper1.png"/>
</p>


## Programming Languages :

    BASH

## System :

    Linux

## Tested  

    Debian 9 GNOME

## RUN

\# bash ./temper.sh

## Explanation

temper.sh скрипт выводит приветствие и показывает текущую температуру на улице в вашем городе. Данный скрипт придаст интерактивности и дружелюбности  вашей системе.
Город задаётся в фррагменте:
```
ctemp=$(/usr/bin/curl -s "https://wttr.in/Horlivka?T"
```
вам следует заменить Horlivka на ваш город, посмотреть можно на официальном сайте https://wttr.in/

Может потребоваться установка 2х пакетов, если они ещё не стоят:
```
apt install curl libnotify-bin
```
Скрипт адаптирован для cron, можно поставить на запуск при включении системы.
Для этого зайдём в планировщик заданий crontab -e, и добавим строчку:
```
@reboot sleep 20 && /bin/bash /home/user/.scripts/temper.sh
```
Где /home/user/.scripts/temper.sh адрес скрипта.
***
Также можно банально забиндить на горячие клавиши, к примеру Ctrl+t с адресом /home/user/.scripts/temper.sh
***
Ещё один способ для тех у кого GNOME. Создать файл app.desktop по адресу ~/.config/autostart
И добавить в него следующее содержимое:
```
[Desktop Entry]
Type=Application
Exec=/home/crem/.scripts/temper.sh #адрес скрипта
Hidden=false
X-GNOME-Autostart-enabled=true
Name[en_US]=temper
Name=temper
```
После этого в Gnome Tweak Tool в разделе Startup Application у вас появится ваш скрипт temper который будет запускаться при старте системы.

## Cloning an Existing Repository ( Clone with HTTPS )

git clone https://github.com/AnatoliiKyrylenko/temper.git

## Cloning an Existing Repository ( Clone with SSH )

git clone git@github.com:AnatoliiKyrylenko/temper.git
