FROM ubuntu:14.04.4

RUN echo "deb http://ftp.de.debian.org/debian squeeze main" >> /etc/apt/sources.list && \
    echo "deb http://www.emdebian.org/debian/ squeeze main" >> /etc/apt/sources.list && \
	apt-get update && \
    apt-get install qemu build-essential cross-mips-binutils cross-mips-gcc lcc emdebian-archieve-keyring linux-libc-dev-mips-cross libc6-mips-cross libc6-dev-mips-cross binutils-mips-linux-gnu gcc-4.4-mips-linux-gnu g++-4.4-mips-linux-gnu

CMD ["bash"]
