#!/bin/env sh

pwd=`pwd`
export ROOT=$PWD
cd lib/9 && make $@ && cd $pwd \
&& cd mk && make $@ && cd $pwd \
&& mk $@

