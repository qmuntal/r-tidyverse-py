FROM rocker/r-ver:3.6.2

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libcairo2-dev \
    libsqlite-dev \
    libmariadbd-dev \
    libmariadbclient-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libsasl2-dev \
    libedit2 \
    libssl-dev \
    libxml2-dev \
    zlib1g-dev \
    libgit2-dev \
    libcurl4-openssl-dev \
    libgl1-mesa-glx \
    libsm6 \
    tk \
    python3.7 \
    python3-pip

RUN install2.r --error --deps TRUE \
    tidyverse \
    dplyr \
    devtools

RUN pip3 install vtk
