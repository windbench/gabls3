#!/bin/bash

function download {
	wget --progress=bar:force -nc -O /home/jovyan/work/data/$2 $1
}   

#Fetch results from http://doi.org/10.23728/b2share.22e419b663cb4ffca8107391b6716c1b
download "http://hdl.handle.net/11304/a75cdd59-53c5-4823-9741-ba27f7a28a94" "GABLS3_CFDWindSCM_turb0_T2_9.nc"
download "http://hdl.handle.net/11304/8f114102-d861-4cb7-9491-423c9885c99c" "GABLS3_CFDWindSCM_turb1_T2_10.nc"
download "http://hdl.handle.net/11304/91f46f3e-598e-4ae5-a4ef-77bc823e6c47" "GABLS3_CFDWindSCM_turb5_T2_2.nc"
download "http://hdl.handle.net/11304/f03a4d1b-6f14-4c8e-a16d-ef7618ac8350" "GABLS3_CFDWindSCM_turb5_T2_noTadv_3.nc"
download "http://hdl.handle.net/11304/064a93f7-06a0-4bcb-8eed-334a3aaa1476" "GABLS3_CFDWindSCM_turb5_T2_noTadvUadv_4.nc"
download "http://hdl.handle.net/11304/bb568bde-fbba-4e21-88ad-ce5ca717e837" "GABLS3_CFDWindSCM_turb5_T2_noTadvUadvSg0_5.nc"
download "http://hdl.handle.net/11304/d5e3c854-7c32-406f-b97d-8bbabff26c7f" "GABLS3_CFDWindSCM_turb5_T2obs_11.nc"
download "http://hdl.handle.net/11304/ff23e9b1-667e-42dd-8252-057a4896a428" "GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-120_13.nc"
download "http://hdl.handle.net/11304/99c046b3-d7d3-4c54-9643-591e48354d1f" "GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-200_20.nc"
download "http://hdl.handle.net/11304/fa6dccef-a108-4ba2-9bf3-db8a497833b8" "GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-200tau10_21.nc"
download "http://hdl.handle.net/11304/5f2537a7-4309-4732-8ec6-15765bfd64bf" "GABLS3_CFDWindSCM_turb5_T2obs_UVTnud2-80_12.nc"
download "http://hdl.handle.net/11304/ac3fbc32-3df0-44e1-90ad-0c444dda7f7c" "GABLS3_CFDWindSCM_turb5_T2_UVnud40-200_15.nc"
download "http://hdl.handle.net/11304/f28aef0a-fdfa-42b0-9b90-59ebf28833b0" "GABLS3_CFDWindSCM_turb5_T2_UVnud40-200tau10_17.nc"
download "http://hdl.handle.net/11304/2f605bbe-6ee1-4a21-b3be-0bca73b21582" "GABLS3_CFDWindSCM_turb5_T2_UVnud40-200tau30_16.nc"
download "http://hdl.handle.net/11304/b19e3df4-fd65-4062-80b5-e8834fd0cae8" "GABLS3_CFDWindSCM_turb5_T2_UVnud40-400_14.nc"
download "http://hdl.handle.net/11304/936990a4-d8b8-47d0-bb69-628c2ff99e5c" "GABLS3_CFDWindSCM_turb5_T2wt_6.nc"
download "http://hdl.handle.net/11304/b460ab67-9696-47ca-94b5-0515caa4ca0e" "GABLS3_CFDWindSCM_turb5_Tsk_7.nc"
download "http://hdl.handle.net/11304/59d8d6d7-8300-4aff-aeb4-9812b6153ee9" "GABLS3_tendencies_d02_YSU_w60_L9000.nc"


#Fetch validation data from the source
download "http://projects.knmi.nl/gabls/gabls3_scm_cabauw_obs_v33.nc" "gabls3_scm_cabauw_obs_v33.nc" 

set -e

. /usr/local/bin/start.sh jupyter notebook $*
