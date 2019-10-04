    FROM ubuntu:16.04
    MAINTAINER Alvin Jaison “alvin.jaison@iinerds.com“

    RUN apt-get update
    RUN apt-get install -y curl
    RUN apt-get install -y wget
    RUN apt-get install -y unzip
    RUN apt-get install -y software-properties-common
    RUN apt-get install -y python-software-properties

    RUN curl -sL https://deb.nodesource.com/setup_6.x | /bin/sh
    RUN apt-get install -y nodejs
    RUN dpkg –add-architecture i386
    RUN apt-get update
    RUN wget -nc https://dl.winehq.org/wine-builds/Release.key
    RUN apt-key add Release.key
    RUN apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
    RUN apt-get update
    RUN apt-get install –install-recommends winehq-stable -y

    RUN apt-key adv –keyserver hkp://keyserver.ubuntu.com:80 –recv-keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    RUN echo “deb http://download.mono-project.com/repo/ubuntu xenial main” | tee /etc/apt/sources.list.d/mono-official.list
    RUN apt-get update
    RUN apt-get install -y mono-devel

    RUN npm install -g -y npm@5.3.0
    RUN npm install -g -y electron-packager@9.1.0
