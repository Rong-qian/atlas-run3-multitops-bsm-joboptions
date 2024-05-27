#!/bin/bash

# DSIDS="100800 100806 100809 100812 100818 100821 100824 100830 100833 100836 100842 100845 100848 100854 100857 100860 100861"
#DSIDS="100862 100863 100864 100865 100866 100867 100857"
#DSIDS="100102 100812 100814 100818 100821 100823 100848 100850 100854 100857 100859"
 DSIDS="100801 100802 100803 100804 100805 100806 100807 100808 100809 100810 100811 100812"


# for i in $(seq 100800 100859); do
#     DSIDS="$DSIDS $i"
# done
EVENTS=100000             #Events per job
GRIDPACK=1

COMMAND="python batch_management/submit.py --eventsPerJob ${EVENTS} -d ${DSIDS} --gridpack ${GRIDPACK} --ecmEnergy 13000. 13600."
echo $COMMAND
$COMMAND
