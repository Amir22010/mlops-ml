FROM python:3.7

RUN apt install python3.7-distutils

# set working directory
WORKDIR /project

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# add requirements
RUN git clone https://github.com/Amir22010/mlops-ml.git .

# install requirements
RUN cd /project/
RUN ls
RUN pip install -r requirements.txt

# run server
#CMD python manage.py runserver
CMD bash ./deploy.sh

# expose
EXPOSE 5000
