FROM python:3.8-alpine
LABEL maintainer="Valentin Rudloff"

RUN apk add curl jq

COPY gottowork.sh /src/gottowork.sh
COPY notify.py /src/notify.py
COPY requirements.txt /src/requirements.txt

WORKDIR /src
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3", "/src/notify.py"]