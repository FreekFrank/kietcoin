FROM newcoin-env:latest
RUN git clone https://github.com/FreekFrank/kietcoin.git
WORKDIR kietcoin
RUN ./autogen.sh
RUN ./configure
RUN make
