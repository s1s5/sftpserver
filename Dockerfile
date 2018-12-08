FROM ubuntu:18.04
ENV LANG ja_JP.UTF-8
RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get install -y python3 python3-pip locales language-pack-ja && \
    apt-get install -y gosu && \
    dpkg-reconfigure -f noninteractive locales && \
    update-locale LANG=${LANG} && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN pip3 install --upgrade pip
RUN pip3 install setuptools virtualenvwrapper
RUN mkdir /app
ADD requirements.txt /app/
RUN pip3 install -U -r /app/requirements.txt
WORKDIR /app
COPY manage.py /app/manage.py
ADD sftpserver /app/sftpserver

RUN useradd app
RUN chown -R app:app /app

WORKDIR /app
ENTRYPOINT ["gosu", "app"]

#  libpq-dev libffi-dev libssl-dev cron curl libcurl4-openssl-dev git libfontconfig
