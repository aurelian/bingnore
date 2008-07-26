export LIBXML2_LIBS=-lxml2
export LIBXML2_CFLAGS=-I/W/include/libxml2
./configure --prefix=/W --enable-libxml2
make && make install
