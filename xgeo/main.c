#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <X11/Xlib.h>

char *argv0;
Display *dpy;
int sw, sh, screen;

void
usage(void)
{
	fprintf(stderr, "Usage: %s [-w] [-h]\n", argv0);
	exit(1);
}

void
die(char *s, int e)
{
	fprintf(stderr, "%s: %s\n", argv0, s);
	exit(e);
}

void
main(int argc, char *argv[])
{
	argv0 = argv[0] ;
	if(! (dpy = XOpenDisplay(NULL)) )
		die("cannot open open display.", 1);
	
	screen = DefaultScreen(dpy) ;
	sw = DisplayWidth(dpy, screen) ;
	sh = DisplayHeight(dpy, screen) ;

	if(argc==1){
		printf("%dx%d\n", sw, sh);
	}else if(argc==2){
		if(!strcmp(argv[1], "-w"))
			printf("%d\n", sw);
		else if(!strcmp(argv[1], "-h"))
			printf("%d\n", sh);
		else
			usage();
	}else{
		usage();
	}

	exit(0);
}
