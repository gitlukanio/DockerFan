FROM resin/rpi-raspbian:wheezy

COPY skrypt.py /

RUN apt-get update && apt-get install -y libraspberrypi-bin

RUN apt-get install -y python3 python3-pip

RUN apt-get -y install python3-rpi.gpio

WORKDIR /

#RUN pip-3.2 install RPi.GPIO

#RUN python3 skrypt.py

ENTRYPOINT ["python3", "skrypt.py"]

#ENTRYPOINT ["/bin/bash"]


