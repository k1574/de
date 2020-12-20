/* #define UID1 1000 */
#define GID1 -1
#define SUID1 0
#define SGID1 0
#define CHROOT ""
#define CHRDIR ""
#define ENFORCE_WRITE_CHECK 0
static struct rule_t rules[] = {
	/* UID, GID, SUID, SGID, alias(ONE string), path to binary executable.
	 * If path is set to "*" then it will be run from the "PATH" variable. */
	{ UID1, GID1, SUID1, SGID1, "su", "/bin/su"},
	{ UID1, GID1, SUID1, SGID1, "rmisverydangerous", "/bin/rm"},
	{ UID1, GID1, SUID1, SGID1, "cp", "/bin/cp"},
	{ UID1, GID1, SUID1, SGID1, "chmod", "/bin/chmod"},
	/* Network utilites. */
	{ UID1, GID1, SUID1, SGID1, "ifconfig", "/bin/ifconfig" },
	/* Voidlinux. */
	{ UID1, GID1, SUID1, SGID1, "xi", "/bin/xbps-install" },
	{ UID1, GID1, SUID1, SGID1, "xr", "/bin/xbps-remove" },
	{ UID1, GID1, SUID1, SGID1, "sv", "/bin/sv" },
	/* Python. */
	{ UID1, GID1, SUID1, SGID1, "pip3", "/bin/pip3" },
	{ UID1, GID1, SUID1, SGID1, "pip2", "/bin/pip2" },
	/* Archlinux package manager. */
	{ UID1, GID1, SUID1, SGID1, "pacman", "/bin/pacman"},
	/* System utils. */
	{ UID1, GID1, SUID1, SGID1, "shutdown", "/bin/shutdown"},
	{ 0 },
};
