#!/usr/bin/env bash
# Update the species list
#set -x
source /etc/birdnet/birdnet.conf
if [ -f $HOME/birdnetpi/scripts/birds.db ];then
sqlite3 $HOME/birdnetpi/scripts/birds.db "SELECT DISTINCT(Com_Name) FROM detections" | sort >  ${IDFILE}
fi
