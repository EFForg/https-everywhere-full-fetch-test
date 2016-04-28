FROM ubuntu

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    gcc \
    python-dev \
    libssl-dev \
    python-lxml \
    sudo \
    git-core \
    ca-certificates \
    python2.7 \
    python-pip \
    curl \
    lsb-release && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*

RUN pip install setuptools wheel
RUN bash -c 'curl https://raw.githubusercontent.com/EFForg/https-everywhere/master/test/rules/requirements.txt | pip install -r /dev/stdin'

RUN mkdir /patch
ADD test.sh /
CMD ["/test.sh"]
