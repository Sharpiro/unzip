set -e

# gcc -fPIC -shared -Wl,-o libunzip.so.0.4 unzip.c crc32.c crypt.c envargs.c explode.c extract.c fileio.c globals.c inflate.c list.c match.c process.c ttyio.c ubz2err.c unreduce.c unshrink.c zipinfo.c unix.pic.o api.c

echo "compiling"
gcc -Wl, -fPIE -static -c unzip.c crc32.c crypt.c envargs.c explode.c extract.c fileio.c globals.c inflate.c list.c match.c process.c ttyio.c ubz2err.c unreduce.c unshrink.c zipinfo.c api.c
echo "linking"
ar rcs libunzip.a unzip.o crc32.o crypt.o envargs.o explode.o extract.o fileio.o globals.o inflate.o list.o match.o process.o ttyio.o ubz2err.o unreduce.o unshrink.o zipinfo.o unix.pic.o api.o
