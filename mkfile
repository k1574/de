<mkconfig
MKSHELL = rc
DIRS = `{echo 9/^(yacc rc)} sup \
        `{echo x/^(plumb wm trm men lck tab lsw ptr geo sel prp wup iv zoom)} \
        goph ic \
        `{echo 9/^(ed sed awk)} \
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
