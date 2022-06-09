-----------------------------
   DESCRIPTION OF CONTENTS
-----------------------------

The LC-3 tools package contains the lc3as assembler, the lc3sim simulator,
and lc3sim-tk, a Tcl/Tk-based GUI frontend to the simulator.  All tools,
code, etc., were developed by Steven S. Lumetta on his own time with his
own resources for use in teaching classes based on the textbook by 
Yale N. Patt and Sanjay J. Patel entitled, "Introduction to Computing
Systems: From Bits & Gates to C & Beyond," second edition, McGraw-Hill,
New York, New York, 2004, ISBN-0-07-246750-9.

The contents of the LC-3 tools distribution, including sources, management
tools, and data, are Copyright (c) 2003 Steven S. Lumetta.

The LC-3 tools distribution is free software covered by the GNU General 
Public License, and you are welcome to modify it and/or distribute copies 
of it under certain conditions.  The file COPYING (distributed with the
tools) specifies those conditions.  There is absolutely no warranty for 
the LC-3 tools distribution, as described in the file NO_WARRANTY (also
distributed with the tools).



---------------------
   NECESSARY TOOLS
---------------------

Installation requires versions of gcc (the Gnu C compiler),
flex (Gnu's version of lex), and wish (the Tcl/Tk graphical shell).
All of these tools are available for free from many sources.
If you have Gnu's readline installed, the configure script should
find it and use it for the command line version of the simulator.
I don't currently use the history feature, but will add it...someday.

Other necessary but more standard tools include uname, rm, cp, mkdir, 
and chmod.

Currently, the configure script searches only a few directories.
If your binaries are in a reasonable place that I overlooked, send
me a note and I'll add it to the default list.  If you have 
idiosyncratic path names (e.g., the name of your fileserver in your
path), you will have to add the correct paths to the search path at 
the top of the configure script yourself.

N.B.  I have installed the package on Cygwin, Solaris, and Linux
machines.  Linux has been used by 2-3 other schools at the time of
the 0.5 release; Cygwin is stable on my home machine; Solaris GUI
version caused me grief last time I launched it, but I haven't
had time to investigate.

DEBIAN USERS (and possibly some other distributions of Linux):
After you configure, remove "-lcurses" from the OS_SIM_LIBS
definition in the Makefile.  (Or you can install the curses library,
but the routines that I use are in the standard library in the
Debian distribution.  In other distributions, they're in the
curses library.  One day, I'll extend configure to check for it.)


-------------------------------
   INSTALLATION INSTRUCTIONS
-------------------------------

The LC-3 tools package is designed to work as either a personal or 
administrative installation on various flavors of Unix, including
Windows NT-based systems with appropriate support (e.g., Cygwin).

First, decide where the binaries and LC-3 OS code should be installed.
    * If you want it in the directory in which you unpacked the code,
      simply type "configure."
    * If you want it in a different directory, say /usr/bin, type
      configure --installdir /usr/bin
      replacing /usr/bin with the desired directory.

Then type 'make'.

If you want to make the tools available to other people, next type
'make install'.  If not, don't.

Please send any comments or bug reports to me at lumetta@uiuc.edu.
Unfortunately, due to the volume of e-mail that I receive on a regular
basis, I cannot guarantee that I will respond to your mail, but
I will almost definitely read it.

