#! /bin/bash

function dload()
{
	if [ $lq -le 100 ] && [ $lq -gt 65 ]; then
	echo '${image ./pix/wlan100.png -s 94x79 -p 10,25}'
	fi
	if [ $lq -lt 66 ] && [ $lq -gt 55 ]; then
	echo '${image ./pix/wlan50.png -s 94x79 -p 10,25}'
	fi
	if [ $lq -lt 56 ] && [ $lq -gt 49 ]; then
	echo '${image ./pix/wlan40.png -s 94x79 -p 10,25}'
	fi
	if [ $lq -lt 50 ] && [ $lq -gt 5 ]; then
	echo '${image ./pix/wlan5.png -s 94x79 -p 10,25}'
	fi


}
function usage()
{
echo '${image ./pix/wlan0.png -s 94x79 -p 10,25}'
}

percent=`iwconfig wlan0|grep 'Link Quality'|cut -f2 -d=|cut -f1 -d\ | cut -f1 -d\ `

[ -z $percent ] && exit

lq=`echo "scale=1 ; $percent * 100" | bc |cut -f1 -d.`



if [ $lq -lt 5 ]
then
	usage
else
	dload
fi
