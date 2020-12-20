#!/bin/env sh

pwd=`pwd`
cd lib/9 && make $@ && cd $pwd \
&& cd mk && make $@ && cd $pwd \
&& mk $@

