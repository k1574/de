include makeconfig

LIB=${NAME}.a

all: ${LIB}

${LIB}: ${OFILES}
	${AR} ${ARFLAGS} ${LIB} ${OFILES}

.c.o:
	${CC} -c -o $@ ${CPPFLAGS} ${CFLAGS} $<

clean:
	rm -f ${OFILES} ${LIB}
install: ${LIB}
	mkdir -p ${MAN}/7
	cp -f man-regexp ${MAN}/7/regexp
	chmod 0644 ${MAN}/7/regexp

