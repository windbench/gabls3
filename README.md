# newa-gabls3

GABLS3 case study is a work in progress.
The docker image is automatically generated from this repository (containing the data processing scripts). The data come from EUDAT (1.28GB compressed) and are downloaded when the image is being run (they are not part of the docker image). If you mount the image to a folder on your host machine (the second option for running the image), the EUDAT data will be saved in your local machine and will not have to be downloaded again when you re-run the image.
The image itself is very bloated as I am using the unidata/python image (5GB) which has everything possible installed in it (work in progress). For that reason running the image for the first time will take time.

To summarize, all the downloading is done once. At the second time the image will work offline.



You can run it with Docker using
docker run -it -p 8888:8888  windbench/newa-gabls3

Not to have the data downloaded each time, it is suggested to attach a local folder to the image using:
docker run -it -p 8888:8888 -v ~/LOCAL_FOLDER:/home/jovyan/work/data windbench/newa-gabls3


When editing the script remember that only the mounted folder is persistant and the rest will be destroyed when the image is stoped. You can download your edited scripts or keep them in the /home/jovyan/work/data folder (assuming it is mounted).

