FROM electronicfrontierfoundation/https-everywhere-docker-base
MAINTAINER William Budington "bill@eff.org"

RUN bash -c 'curl https://raw.githubusercontent.com/EFForg/https-everywhere/master/test/rules/requirements.txt | pip install -r /dev/stdin'

RUN mkdir /patch
ADD test.sh /
CMD ["/test.sh"]
