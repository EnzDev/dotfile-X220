#!/bin/bash
rofiargs=("-sep" "|" "-dmenu" "-i" "-p" ":" "-no-custom" "-format" "'i'" "-location" "3" "-yoffset" "16")

CHOICE=`echo -n "Cancel|Sleep|Shutdown|Reboot|Lock" | rofi ${rofiargs[@]} -lines 5 -mesg "What to <b>do</b> ?"`

# rofi -e $(eval echo $CHOICE)

case $(eval echo $CHOICE) in
1)
	systemctl suspend
	exit
	;;	
2)
	STATUS=2$(systemctl poweroff || echo -n "Yes|Nop" | rofi $rofiargs -lines 1 -columns 2 -mesg "An user prevent shutdown. Force ?")
	;;
3)
	STATUS=3$(systemctl reboot || echo -n "Yes|Nop" | rofi $rofiargs -lines 1 -columns 2 -mesg "An user prevent rebooting. Force ?")
	;;
4)
	STATUS=4$(/home/enzo/.bin/sleep.sh)
	exit
	;;
*)
	exit 0
	;;
esac

exit 0

case $STATUS in
20|30)
	exit 0
	;;
21)
	systemctl poweroff -i
	exit
	;;
31)
	systemctl reboot -i
	exit
	;;
esac
