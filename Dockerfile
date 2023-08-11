FROM tensorflow/tensorflow:latest-gpu

COPY requirements.txt /tmp/

RUN pip install --upgrade pip
RUN pip install --requirement /tmp/requirements.txt
