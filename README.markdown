xterm-256color "ls --color" macro
=================================

This is my custom colors for `ls --color` when using a terminal
with 256-color support. (I suggest
[LilyTerm](http://lilyterm.luna.com.tw/)
as it supports basically _all_ of the Cool Modern Features!)

Being very annoyed with copying around all the `38;5;xxx` codes
while attempting to play with the color values, mixed with what
must have been a _"special"_ blend of sleep-deprivation, my normal
moderate baseline of crazy, and trying to juggle WAY too many
unfinished software projects... I somehow decided to fix the 
whole problem with the
[unholy](http://www.sendmail.org/m4/intro.html)
[insanity](http://www.gnu.org/savannah-checkouts/gnu/autoconf/manual/autoconf-2.68/html_node/Writing-Autoconf-Macros.html#Writing-Autoconf-Macros)
that is
[**M4**](http://www.gnu.org/software/m4/manual/m4.html)!

So now I have some macros that:

1.  _Do_ actually succeed at solving my initial annoyance by making
    playing around with color settings much simpler.
2.  Probably represent the absolute worst undocumented, badly
    designed, write-only **mess** of code I've ever written.

*sigh* ...


But none of that matters...
---------------------------

Fortunately, you don't have to deal with that - the
customizable part is obvious in the .m4 file, for setting your
own colors, with plenty of examples. Change it to your liking,
run `make`, and source the apropriate file.


What about the current colors?
------------------------------

It's a work-in-progress. Video files are starting to shape up, but
i have a LOT of file extensions to go still. Expect the actual color
settings to change as I get around to fixing them.


Known Bugs
----------

I haven't implemented the TERM directive yet. It'll be finished
soon - there's only so much M4 you can do at one time. @.@


Who needs to be smacked with a sofware-design textbook?
-------------------------------------------------------

Brent Sanders - [ls_colors@thoughtnoise.net](mailto:ls_colors@thoughtnoise.net)






