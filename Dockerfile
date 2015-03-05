FROM ubuntu:14.04

ENV UPDATED_AT 2015-03-05

RUN apt-get update

RUN apt-get install -y \
    default-jre \
    gcc \
    git \
    make \
    openjdk-7-jdk

RUN git clone https://github.com/rakudo/rakudo.git /rakudo

WORKDIR /rakudo

# freezing the working state
RUN git reset --hard bca33b60a05afc1b30141834159f9582c16be33a

RUN perl Configure.pl --backends=moar,jvm --gen-moar
RUN make
RUN make install
