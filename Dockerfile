# Tensorflow image
FROM tensorflow/tensorflow:2.13.0-gpu

COPY requirements.txt /tmp/

RUN pip install --upgrade pip
RUN pip install --requirement /tmp/requirements.txt

# Required packages
RUN apt-get update && apt-get install -y \
  git

# Create the user in container
ARG USERNAME=user-name-goes-here
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# [Optional] Set the default user. Omit if you want to keep the default as root
USER $USERNAME