<mkconfig
MKSHELL = rc
DIRS = yayacc herc sup \
        `{echo x/^(wm trm men lck tab lsw geo sel prp wup iv zoom)}\
        goph ic plumb\
        ted sted hawk\
	f/test f/info\
	ff\
        `{echo x/^(sam srf) }# These require GCC so they get compiled last.

all :Q:

dep-% :QV: 
	cat $DIRS^/dep/$stem | sed '/^$/d' | goblin uniq -U

& :QV:
	pwd = `{pwd}
	for(d in $DIRS){
		echo '(cd '$d'; mk '$target')'
		{ builtin cd $d ; mk $MKFLAGS $stem ; builtin cd $pwd }
	}
