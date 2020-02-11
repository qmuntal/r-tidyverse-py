FROM rocker/r-ver:3.6.2

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libedit2 \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev \
    libgit2-dev \
    libcurl4-openssl-dev \
    libgl1-mesa-glx \
    libsm6 \
    python3.7 \
    python3-pip

RUN install2.r --error --deps TRUE \
    readr \
    dplyr \
    tidyr \
    devtools

RUN pip3 install vtk
