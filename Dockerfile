FROM debian:jessie

COPY ./emdebian-toolchain-archive.key /emdebian-toolchain-archive.key
COPY ./libgmp3c2_4.3.2+dfsg-1_amd64.deb /libgmp3c2_4.3.2+dfsg-1_amd64.deb

RUN dpkg -i /libgmp3c2_4.3.2+dfsg-1_amd64.deb

RUN mkdir /project
ADD demo.s /project/

RUN echo "deb http://www.emdebian.org/debian stable main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-key add /emdebian-toolchain-archive.key \
    && apt-get install debian-archive-keyring

RUN apt-get install --force-yes --yes \
      cpp-4.3-mips-linux-gnu \
      gcc-4.3-mips-linux-gnu \
      qemu-system-mips \
      qemu-user

RUN apt-get install --yes \
      vim

WORKDIR /project

CMD ["bash"]
