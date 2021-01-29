include makeconfig

INCFILE =  auth.h bio/lib9.std.h fmt/fmtdef.h fmt/strtod.h nan.h regex/regcomp.h sec/libsec.h utf.h \
	bio.h fcall.h lib9.h regexp.h sec/os.h utf/plan9.h \
	bio/_lib9.h fmt.h libc.h regexp9.h u.h zoneinfo.h
INCDIR = ${SHR}/inc/9
LIB=${NAME}.a

all: ${LIB}

${LIB}: ${OFILES}
	${AR} ${ARFLAGS} ${LIB} ${OFILES}

.c.o:
	${CC} -c -o $@ ${CPPFLAGS} ${CFLAGS} $<

clean:
	rm -f ${OFILES} ${LIB}
install: ${LIB}
	mkdir -p ${MAN}/7 ${SHR}/inc/${NAME} ${SHR}/lib
	cp -f man-regexp ${MAN}/7/regexp
	chmod 0644 ${MAN}/7/regexp
	cp -f ${LIB} ${SHR}/lib/
	cp -f ${INCFILE} ${INCDIR}
