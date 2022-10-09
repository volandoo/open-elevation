FROM osgeo/gdal:ubuntu-small-latest-amd64

RUN apt-get update
RUN apt-get install -y libspatialindex-dev 
RUN apt-get install -y unrar
RUN apt-get install -y bc python3-pip wget

ADD ./requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir /code
ADD . /code/

WORKDIR /code
CMD python3 server.py

RUN mkdir /code/data
RUN /code/create-dataset.sh

EXPOSE 8080

EXPOSE 8443
