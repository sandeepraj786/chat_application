FROM python:3.6
RUN mkdir /chatapp
COPY . /chatapp
WORKDIR /chatapp
RUN pip3 install -r requirements.txt
RUN pip3 install mysqlclient
EXPOSE 8000
WORKDIR /chatapp/fundoo/
ENTRYPOINT  python3 manage.py runserver 0.0.0.0:8000

