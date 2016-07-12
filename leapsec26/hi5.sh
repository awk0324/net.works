#!/bin/sh
#
# http / highfive - leapsec26
# CC-BY-SA Browserbased iheartmyart[at]browserbased[dot]org
#

deadline=$(TZ=GMT date -d "2015-06-30 23:59:59" +%s)
counter=0
while true
do
	epochtime=$(date +%s)
	# echo $epochtime

	if  [ $epochtime -eq $deadline ] && [ $counter -eq 0 ]   
	 then 
	     curl -A Browserbased -s http://noemata.net/leapsec26/highfive.html>/dev/null\ 
	         && echo "highfive!"
	     TZ=GMT date +%Y-%m-%d\ %H:%M:%S.%N
	     counter=$(expr $counter + 1)
	     sleep .7
        elif [ $epochtime -eq $deadline ] && [ $counter -eq 1 ] 
	 then
	     curl -A Browserbased -s http://noemata.net/leapsec26/highfive_again.html>/dev/null\ 
	         && echo "highfive again!"
	      TZ=GMT date +%Y-%m-%d\ %H:%M:%S.%N
	exit
	fi
done
#EOF
