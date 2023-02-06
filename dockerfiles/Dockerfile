FROM jupyter/datascience-notebook:x86_64-python-3.10

USER root

WORKDIR /tmp

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

USER $NB_UID
WORKDIR "${HOME}"

