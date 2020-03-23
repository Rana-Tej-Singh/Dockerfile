#Dockerfile || copy the app.py file or add in same folder to copy from current location to container.

FROM python:3.6-alpine

RUN pip install flask

COPY app.py /opt/

EXPOSE 8080

WORKDIR /opt

ENV APP_COLOR=red
ENV VERSION=v3

CMD ["python", "app.py"]
