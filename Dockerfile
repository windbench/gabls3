FROM unidata/python

#switch to root for installing packages
USER root
                   
## install davfs2 for being able to mount EUDAT folders
#RUN apt-get update
#RUN apt-get install -yq --no-install-recommends davfs2
#RUN apt-get clean
#RUN rm -rf /var/lib/apt/lists/*

# add files directory


COPY build_resourcess/ /home/jovyan/work/
RUN chown -R $NB_USER:users /home/jovyan/work/

COPY eudat_start.sh /usr/local/bin/
#COPY eudat_connect.sh /home/jovyan/work/

## allow the user to mount eudat folder
#RUN chown root.root /home/jovyan/work/eudat_connect.sh

RUN chown -R $NB_USER:users /usr/local/bin/eudat_start.sh

#RUN chmod 4755 /home/jovyan/work/eudat_connect.sh

RUN chmod +x /usr/local/bin/eudat_start.sh

#RUN echo "jovyan  ALL=NOPASSWD: /home/jovyan/work/eudat_connect.sh" >> /etc/sudoers

# switch back to the standard user and create a folder for mounting
USER jovyan

RUN mkdir /home/$NB_USER/work/data

# CMD ["/usr/local/bin/start-eudat.sh", " "]
#CMD start-eudat.sh

CMD ["eudat_start.sh"]


