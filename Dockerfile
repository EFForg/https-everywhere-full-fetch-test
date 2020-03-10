FROM electronicfrontierfoundation/https-everywhere-docker-base
LABEL maintainer="William Budington <bill@eff.org>, Alexis Hancock <alexis@eff.org>"

RUN bash -c 'curl https://raw.githubusercontent.com/EFForg/https-everywhere/master/test/rules/requirements.txt | pip3 install -r /dev/stdin'

RUN mkdir /patch
ADD test.sh /
CMD ["/test.sh"]