FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe


RUN apt-get update && apt-get install -y \
    python3.5 \
    python3-pip\
    git\
    python3-tk -y\
    python3-h5py\
    python3-seaborn\
    python3-numpy\

RUN pip3 install pandas
 
RUN mkdir /scripts
WORKDIR /scripts
RUN git clone https://github.com/lionelus/git_project.git && apt-get remove -y git


