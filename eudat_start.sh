#!/bin/bash

progressfilt ()
{
    local flag=false c count cr=$'\r' nl=$'\n'
    while IFS='' read -d '' -rn 1 c
    do
        if $flag
        then
            printf '%c' "$c"
        else
            if [[ $c != $cr && $c != $nl ]]
            then
                count=0
            else
                ((count++))
                if ((count > 1))
                then
                    flag=true
                fi
            fi
        fi
    done
}

# data folder can be downloaded manually from https://b2drop.eudat.eu/s/gGMXxHJjRwUGe2A
SHARELINK=https://b2drop.eudat.eu/s/gGMXxHJjRwUGe2A

FILES="GABLS3_tendencies_d02_YSU_w60_L9000.nc
GABLS3_CFDWindSCM_turb5_T2_2.nc
GABLS3_CFDWindSCM_turb0_T2_9.nc
GABLS3_CFDWindSCM_turb1_T2_10.nc
GABLS3_CFDWindSCM_turb5_T2wt_6.nc
GABLS3_CFDWindSCM_turb5_Tsk_7.nc
GABLS3_CFDWindSCM_turb5_T2obs_11.nc
GABLS3_CFDWindSCM_turb5_T2_noTadv_3.nc
GABLS3_CFDWindSCM_turb5_T2_noTadvUadv_4.nc
GABLS3_CFDWindSCM_turb5_T2_noTadvUadvSg0_5.nc
GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-80_12.nc
GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-120_13.nc
GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-200_20.nc
GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-200tau10_21.nc
GABLS3_CFDWindSCM_turb5_T2_UVnud40-400_14.nc
GABLS3_CFDWindSCM_turb5_T2_UVnud40-200_15.nc
GABLS3_CFDWindSCM_turb5_T2_UVnud40-200tau30_16.nc
GABLS3_CFDWindSCM_turb5_T2_UVnud40-200tau10_17.nc"

for f in $FILES
do
	wget --progress=bar:force -nc -O /home/jovyan/work/data/$f $SHARELINK"/download?path=%2F&files="$f 2>&1 | progressfilt
done

#Fetch validation data from the source
wget --progress=bar:force -nc -O /home/jovyan/work/data/"gabls3_scm_cabauw_obs_v33.nc" "http://projects.knmi.nl/gabls/gabls3_scm_cabauw_obs_v33.nc" 2>&1 | progressfilt

set -e

. /usr/local/bin/start.sh jupyter notebook $*
