#!/bin/bash

EVENTS=1000            # Events per job
GRIDPACK=2                # Control of gridpack mode (see README for more information)

#######################################################
# Use this block if generating events from gridpack
# The DSID and SEED should corresponding to each other
# ecmEnergy can be only 13000 or 13600
#######################################################
#DSIDS="100812 100813 100814 100815 100816 100817 100818 100819 100820 100821 100822 100823 100860 100861 100862 100863 100864 100865 100866 100867 100868 100869 100870 100871 100872 100873 100874 100875 100876 100877 100878 100879 100881 100882 100883"

SEED="241204"

#COMMAND="python batch_management/submit.py --eventsPerJob ${EVENTS} -d ${DSIDS} --gridpack ${GRIDPACK} --ecmEnergy 13000 --seed ${SEED}"

#######################################################
# Use this block in other case
#######################################################

DSIDS="100812"
COMMAND="python batch_management/submit.py --eventsPerJob ${EVENTS} -d ${DSIDS} --gridpack ${GRIDPACK} --ecmEnergy 13000 --seed ${SEED} --location /home/rqian/Research/test_gridpack/v2/madevent_mc_13TeV.MGPy8EG_ttZp_tttt_m400_ct3p0_th0p79.GRID.tar.gz /home/rqian/Research/atlas-run3-multitops-bsm-joboptions_MCJO/madspin_card/ttZprime/madspin_card.dat"


#######################################################

#echo $COMMAND
#$COMMAND
