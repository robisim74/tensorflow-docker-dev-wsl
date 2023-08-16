FROM tensorflow/tensorflow:2.13.0-gpu

COPY requirements.txt /tmp/

RUN pip install --upgrade pip
RUN pip install --requirement /tmp/requirements.txt

# Required packages
RUN apt-get update && apt-get install -y \
  git \