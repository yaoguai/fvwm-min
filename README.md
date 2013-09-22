Fvwm Simplicity
===============

Fvwm lacks a set of "sane defaults." As a result of its complexity, many users
cobble together their own configurations, which were themselves copied in part
from other configurations. _Fvwm_ _Simplicity_ provides the "sane defaults"
that have been missing from the Fvwm distribution.

Out of the box, basic functionality for managing windows is provided, along
with launching a few core applications, and some essential keyboard shortcuts.
The look and feel is similar to Motif, but with smooth fonts. The defaults are
simple and functional. The configurations included here can be easily used as
the basis for further per-user configuration, or deployed as the default for a
system-wide installation.

A number of styles are available, which provide different color themes:

* _CDE_ -- The default CDE look as seen on many Unix workstations
* _Forest_ -- Dense forests and natural surroundings
* _Marsh_ -- Mysterious misty marshes
* _Min_ -- Monochromatic minimalism
* _MWM_ -- Like the Motif window manager
* _Oxygen_ -- Light blue and clean minimalist style
* _Solar_ -- Similar to the classic Solaris CDE palette
* _T64_ -- Similar to the look of Tru64 and VMS CDE environments
* _TWM_ -- Like the old TWM window manager
* _Vaxen_ -- Takes after a line of minicomputers and workstations

Your theme can be switched by simply changing the symbolic link _mystyle_.

Installation
------------
The installation process includes just a few steps:

1. If $HOME/.fvwm exists, make a backup as a precaution
2. Run "make" to build the styles
3. Run "make install" to install the configurations into $HOME/.fvwm

Keyboard Shortcuts
------------------
A small number of keyboard shortcuts are defined by default. The most important
to know are the following:

* Ctrl+Alt+T: Launch a terminal
* Ctrl+Alt+C: Launch an xclock
* Ctrl+Alt+K: Close the current window
* Ctrl+Alt+M: Open the Root Menu
* Ctrl+Alt+R: Restart Fvwm
* Ctrl+Alt+Up: Navigate to the page above
* Ctrl+Alt+Down: Navigate to the page below

Customization
-------------
The configurations provided here can be very easily customized. The most common
and useful customizations are in the three following areas:

1. Menu entries
2. Keyboard and mouse shortcuts
3. Init and restart functions

Because these are the aspects that are most important for customization, they
also appear in that order in the configuration files. This means that you can
begin customizing Fvwm with the necessary entries as quickly as possible.
