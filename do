#!/bin/env sh

goblin_git='github.com/k1574/goblin'
pwd=`pwd`
export ROOT=$PWD

which goblin || go get -u $goblin_git && go install $goblin_git

echo [ cd lib/9 ';' make $@ ] && cd lib/9 && make $@ && cd $pwd \
&& echo [ cd mk ';' mk $@ ] && cd mk && make $@ && cd $pwd \
&& echo [ cd 9/yacc ';' mk $@ ] && cd 9/yacc && mk $@ && cd $pwd\
&& echo [ cd 9/rc ';' mk $@ ] && cd 9/rc && mk $@ && cd $pwd \
&& echo [ mk $@ ] && mk $@

