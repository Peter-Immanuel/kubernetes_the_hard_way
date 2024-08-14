FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    vim \
    openssl \
    git \
    && apt-get clean

WORKDIR /home

COPY ./startup_script.sh /home/startup_script.sh

RUN chmod +x /home/startup_script.sh

# RUN git clone --depth 1\
#      https://github.com/kelseyhightower/kubernetes-the-hard-way.git

ENTRYPOINT [ "/home/startup_script.sh" ]

