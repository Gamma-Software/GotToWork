FROM python:3.8-alpine
LABEL maintainer="Valentin Rudloff"

COPY . .
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3", "pingbot.py"]