#!/bin/bash
un="Анатолий"
h=$(/bin/date +%H)
if [[ $h -ge 4 && $h -le 9 ]]
then
	dd="Доброе утро, $un"
fi
if [[ $h -ge 10 && $h -le 16 ]]
then
	dd="Добрый день, $un"
fi
if [[ $h -ge 17 && $h -le 22 ]]
then
	dd="Добрый вечер, $un"
fi
 if [­[ $h -ge 23 && $h -le 3 || $h -eq 0 ]]
then
	dd="Доброй ночи, $un"
fi
ctemp=$(/usr/bin/curl -s "https://wttr.in/Horlivka?T" | /bin/grep -m 1 -Eo -e '-?[[:digit:]].*°C.*')
/usr/bin/notify-send "$dd" "Температура: $ctemp"
