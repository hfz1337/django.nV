FROM python:3.7

WORKDIR /opt/django.nV
ADD app .

RUN pip install Django==1.8.3 && \
    chmod +x run.sh

EXPOSE 8000

ENTRYPOINT ["/opt/django.nV/run.sh"]
