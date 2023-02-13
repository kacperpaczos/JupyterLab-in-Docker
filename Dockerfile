FROM jupyter/datascience-notebook:x86_64-python-3.10

WORKDIR /tmp

COPY ./requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

USER $NB_UID
WORKDIR "${HOME}"
RUN mkdir -p ~/workspace
RUN cd ~
RUN chgrp users workspace
RUN chown jovyan workspace
RUN chmod -R 770 workspace
