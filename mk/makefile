include makeconfig
TARG = ${PROGNAME}
OFILES = arc.o archive.o bufblock.o env.o file.o graph.o job.o lex.o \
            main.o match.o mk.o parse.o recipe.o rc.o rule.o run.o sh.o \
            shell.o shprint.o symtab.o var.o varsub.o word.o unix.o
AFILES = ${OBJ9}
CFLAGS = ${DEFS} ${CPPFLAGS} ${INCS}
all: ${TARG}
strip: ${TARG}
	${STRIP} ${TARG}
.c.o:
	${CC} -c -o $@ ${CFLAGS} $<
clean:
	rm -f ${OFILES} ${TARG}
${TARG}: ${OFILES}
	${LD} -o ${TARG} ${LDFLAGS} ${OFILES} ${AFILES} ${LIBS}
install: ${TARG}
	mkdir -p ${EXEDIR} ${MANDIR}/1 ${APPDIR}/${PROGNAME}
	cp -f ${TARG} ${EXEDIR}/${TARG}
	chmod 0755 ${EXEDIR}/${TARG}
	cp -f man ${MANDIR}/1/${PROGNAME}
	chmod 0644 ${MANDIR}/1/${PROGNAME}
	cp -rf inc ${APPDIR}/${PROGNAME}
