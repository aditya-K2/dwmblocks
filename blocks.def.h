//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"  ", "/home/aditya/suckless/scripts/battery.sh", 1,		0},

	{"", "/home/aditya/suckless/scripts/backlight.sh", 0,		20},

	{"", "/home/aditya/suckless/scripts/pulseaudio.sh", 0,		10},
	
	{" ", "/home/aditya/suckless/scripts/bitcoin", 60,		0},

	{" ", "date '+%b %d (%a) %I:%M%p' ",					60,		0},

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   ";
static unsigned int delimLen = 5;
