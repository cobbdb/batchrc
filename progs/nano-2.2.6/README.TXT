Nano for Win32 README
---------------------

This version of nano for Win32 systems was compiled using the
standard nano source with a few tweaks (soon to be merged into the
official nano distribution, hopefully), cygwin and PDCurses 2.4.  

INSTALL
-------
	- Copy cygwin1.dll somewhere where Windows will be able to see it (C:\WINNT or 
	  C:\WINNT\SYSTEM32 is good for NT users and C:\WINDOWS or C:\WINDOWS\SYSTEM 
	  are good for WIn9x users.  You can always leave it in the same directory as the
	  nano executable if you're really lazy.
	- Put the nano.exe executable somehwere useful (your desktop or C:\WINDOWS perhaps)
	- Have fun with it.

COMPILATION
-----------
This is how I compiled this binary, if you're at all interested:
First I downloaded and installed up cygwin, a great FREE product I can't recommend
highly enough for those who must use Windows (http://sources.redhat.com/cygwin).

Then I obtained PDCurses from http://pdcurses.sf.net and extracted the PDCURSES for cygwin 
distribution to /usr/local/pdcurses


And finally 
$ cd /usr/local/pdcurses
$ ln -sf pdcurses.a libcurses.a
$ export CFLAGS="-O2 -Wall -I/usr/local/pdcurses"
$ export LDFLAGS="-L/usr/local/pdcurses"

For 2.0 the executable was compiled on Windows XP SP2, so let me know if there are those
of you still running Windows 2000 or (gasp) earlier and are finding problems.


(RE)DISTRIBUTION
------------
Please see the COPYING.TXT file for terms of distribution for these files.


BUGS
----
If you've got them, send them my way.
	

Chris Allegretta, chrisa@asty.org