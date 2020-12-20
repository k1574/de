include makeconfig

TARG = ${NAME}

OFILES = arc.o archive.o bufblock.o env.o file.o graph.o job.o lex.o \
            main.o match.o mk.o parse.o recipe.o rc.o rule.o run.o sh.o \
            shell.o shprint.o symtab.o var.o varsub.o word.o unix.o ${OBJ9}

all: ${TARG}

strip: ${TARG}
	${STRIP} ${TARG}

.c.o:
	${CC} -c -o $@ ${CPPFLAGS} ${CFLAGS} $<

clean:
	rm -f ${OFILES} ${TARG}

${TARG}: ${OFILES}
	${LD} -o ${TARG} ${LDFLAGS} ${OFILES} ${LIB}

install: ${TARG}
	mkdir -p ${EXE} ${MAN}/1
	cp -f ${TARG} ${EXE}/
	chmod 0755 ${EXE}/${TARG}
	cp -f man ${MAN}/1/${NAME}
	chmod 0644 ${MAN}/1/${NAME}
