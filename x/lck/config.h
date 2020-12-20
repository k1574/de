/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";
static const char *clr = "#777777" ;

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#777777",   /* during input */
	[FAILED] = "#777777",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
