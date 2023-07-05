FROM python:3.11.4-alpine3.18
ENV DockerHOME=/code  
RUN mkdir -p $DockerHOME  
WORKDIR $DockerHOME  

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

RUN pip install --upgrade pip  
COPY requirements.txt $DockerHOME  

RUN pip install -r requirements.txt  

EXPOSE 9000  
VOLUME $DockerHOME

# start server  
# CMD python manage.py runserver 0.0.0.0:9000
