#use an official python runtime as a parent image
FROM python:3.10-slim

#set the working directory in the container
WORKDIR /app

#install python dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .


EXPOSE 7860

#CMD [ "gunicorn","-c","gunicorn_config.py","main:app" ]
CMD [ "python"," ui.py" ]