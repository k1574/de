#!/bin/env sh

cd lib9 && make $@ && cd .. \
&& cd mk && make $@ && cd .. \
&& cd yayacc && mk $@ && cd .. \
&& cd herc && mk $@ && cd .. \
&& mk $@

