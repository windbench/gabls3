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

#Fetch results from http://doi.org/10.23728/b2share.f5d5a492d8aa4b7998b70abd68f5eae4
download "http://hdl.handle.net/11304/97b760fd-c299-4d6b-84ce-3207afe6d298" "Alya-CFDWind1D.nc"
download "http://hdl.handle.net/11304/e30aea38-9e75-4dd4-9795-c208ac12f859" "CFDWindSCM_ke.nc"
download "http://hdl.handle.net/11304/d7e735b2-a452-448b-8414-7620af206984" "Ellipsys1D_TskWRF.nc"
download "http://hdl.handle.net/11304/cdbf2f49-5ac5-431c-adf4-69346f6e1882" "Ellipsys3D_LES_TskWRF.nc"
download "http://hdl.handle.net/11304/29029d0c-93bf-4bd0-8536-97606df14219" "Ellipsys3D_TskWRF.nc"
download "http://hdl.handle.net/11304/1a6c12a2-5308-4ae0-b0e2-1dba75498917" "GABLS3_tendencies_d02_YSU_w60_L9000.nc"
download "http://hdl.handle.net/11304/3b3e447c-faea-4c1a-b30d-ffbb4b7dd8f1" "SP-Wind.nc"
download "http://hdl.handle.net/11304/24a05a3a-5ed3-4373-8273-331b3b812e50" "VentosM.nc"
download "http://hdl.handle.net/11304/141ed020-4624-46fd-80e8-04c94b426628" "WRF-LES_d8.nc"
download "http://hdl.handle.net/11304/fa898581-cb9e-4df8-85f8-6d4e872c9d26" "WRF-MJY_ERA.nc"
download "http://hdl.handle.net/11304/ad8fd2b4-1f5b-4aa8-94ab-ed82f7513def" "WRF-MJY_GFS.nc"
download "http://hdl.handle.net/11304/c70af221-d828-4fdc-9c4c-97c6a75f878a" "WRF-MYNN_ERA.nc"
download "http://hdl.handle.net/11304/246fd920-ace7-46db-a8f8-893ebec7f925" "WRF-MYNN_GFS.nc"
download "http://hdl.handle.net/11304/c84f4eb6-52ee-43ba-b73e-32d741015078" "WRF-QNSE_ERA.nc"
download "http://hdl.handle.net/11304/24167abe-304a-4863-be89-872f5fa5dcd3" "WRF-QNSE_GFS.nc"
download "http://hdl.handle.net/11304/aa8629b1-dc43-4553-9c0d-a9725c8cfe7f" "WRF-TEMF_ERA.nc"
download "http://hdl.handle.net/11304/6e27e0cd-f972-4123-a956-4fff048c039f" "WRF-TEMF_GFS.nc"
download "http://hdl.handle.net/11304/8c164df1-7594-4622-b5e6-652cbfa02f7e" "WRF-YSU_ERA.nc"
download "http://hdl.handle.net/11304/3b861162-08e8-46bd-886f-3b7e7d78f63d" "WRF-YSU_GFS.nc"

#Fetch validation data from the source
download "http://projects.knmi.nl/gabls/gabls3_scm_cabauw_obs_v33.nc" "gabls3_scm_cabauw_obs_v33.nc" 

set -e

. /usr/local/bin/start.sh jupyter notebook $*
