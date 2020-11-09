#include <u.h>
#include <libc.h>

char*
getapproot(void)
{
	static char s[256] = "\0" ;
	static char *h = 0 ;
	
	if(!h) h = getenv("HOME") ;
	if(!h) h = getenv("home") ;

	if(*s) return s ;

	strncpy(s, h, sizeof(s));
	strncat(s, "/app", sizeof(s));

	return s ;
}

