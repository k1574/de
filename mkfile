<mkconfig
MKSHELL = rc
DIRS = yayacc herc\
        xvvm xtrm xmen xlck xtab xlsw xgeo xsel xprp xiv\
        goph ic plumb\
        ted sted hawk\
        xsam xsrf # These require GCC so they get compiled last.

all :Q:

% :QV:
	for(d in $DIRS){
		echo '(cd '$d'; mk '$target')'
		{ builtin cd $d ; mk $MKFLAGS $stem; cd .. }
	}

$DIRS :QV:
	echo '(cd '$target'; mk '$target')'
	cd $target
	mk $MKFLAGS $target
	cd ..
