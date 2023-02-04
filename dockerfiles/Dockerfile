FROM python:3

USER root
WORKDIR /projects

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY ./data /projects/data # TODO
COPY ./notebooks /projects/notebooks # TODO

ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]
