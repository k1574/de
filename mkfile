<$HOME/app/mk/inc/config

MKSHELL = rc
DIR = \
        `{echo 9/^(rc ed sed awk)} \
        `{echo x/^(plumb wm trm men tab lsw ptr geo sel prp wup iv zoom pc ss)} \
        goph ic \
	f/test f/info\
	#ff\
        # `{echo x/^(sam srf) }# These require GCC so they get compiled last.

SUDIR = sup x/lck

dep-% :QV: 
	cat $DIRS^/dep/$stem | sed '/^$/d' | goblin uniq -U

su/& :QV:
	pwd = `{pwd}
	for(d in $SUDIR){
		echo [ cd $d ';' mk $target ]
		{ builtin cd $d ; mk $MKFLAGS $stem ; builtin cd $pwd }
	}

& :QV:
	pwd = `{pwd}
	for(d in $DIR){
		echo [ cd $d ';' mk $target ]
		{ builtin cd $d ; mk $MKFLAGS $stem ; builtin cd $pwd }
	}

