FROM ubuntu:bionic
MAINTAINER Ulrich Hoffmann <uho@xlerb.de>

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y texlive-latex-base texlive-latex-extra texlive-fonts-recommended \
                          texlive-lang-german texlive-lang-european texlive-lang-cyrillic  \
                          cm-super xzdec lyx make fossil mupdf \
    && rm -rf /var/lib/apt/lists/*

VOLUME /VierteDimension
WORKDIR /VierteDimension

