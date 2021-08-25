#  Ubuntu 20.04 LTS Focal Fossa installs TexLive 2019
FROM ubuntu:focal
MAINTAINER Ulrich Hoffmann <uho@xlerb.de>

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:lyx-devel/release \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y lyx cm-super texlive texlive-base texlive-binaries \
        texlive-extra-utils texlive-font-utils texlive-fonts-extra \
        texlive-fonts-recommended texlive-lang-chinese texlive-lang-cjk \
        texlive-lang-cyrillic texlive-lang-european texlive-lang-german \
        texlive-lang-greek texlive-latex-base texlive-latex-base-doc \
        texlive-latex-extra texlive-latex-extra-doc texlive-latex-recommended \
        texlive-latex-recommended-doc texlive-pictures texlive-plain-generic \
        texlive-pstricks texlive-pstricks-doc \
        xzdec lyx make fossil mupdf \
    && (lyx -batch -x reconfigure || echo "alles ok") \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

VOLUME /VierteDimension
WORKDIR /VierteDimension
