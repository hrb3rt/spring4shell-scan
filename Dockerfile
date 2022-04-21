FROM python:3-alpine

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update
RUN apt-get install ttyd libev4
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 80
ENTRYPOINT ["ttyd", "-p", 80, "bash" ]
