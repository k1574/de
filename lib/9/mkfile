<mkconfig

TGT=$NAME.a

all :VQ: $TGT
	echo -n
$TGT : $OBJ
	$AR $ARFLAGS $TGT $OBJ

%.o : %.c
	$CC -c -o $target $CFLAGS  $prereq

clean:
	rm -f $OBJ $TGT

install:
	mkdir -p $MAN/7
	cp -f man-regexp $MAN/7/regexp
	chmod 0644 $MAN/7/regexp
	cp -f $TGT $SHR/lib/
