Fvwm Simplicity
===============

The Fvwm window manager provides a powerful and extremely customizable window
manager for the X windowing system. However, it lacks a set of "sane defaults."
As a result of its complexity, many users cobble together their own
configurations which were themselves copied in part from other configurations,
ad nauseum. _Fvwm_ _Simplicity_ provides the "sane defaults" that have been
missing from the Fvwm distribution.

Out of the box, basic functionality for managing windows is provided, along
with launching a few core applications, and some essential keyboard shortcuts.
The look and feel is similar to Motif, but with smooth fonts. The defaults are
simple and functional. The configurations included here can be easily used as
the basis for further per-user configuration, or deployed as the default for a
system-wide installation.

A number of variants are available, which provide different color themes:

* _CDE_ -- The default CDE look as seen on many Unix workstations
* _Forest_ -- Dense forests and natural surroundings
* _K&R_ -- Inspired by classic books on C and Unix
* _Marsh_ -- Mysterious misty marshes
* _Min_ -- Monochromatic minimalism
* _MWM_ -- Like the Motif window manager
* _Solar_ -- Like a certain popular line of Unix workstations
* _Tea_ -- Light and clean with some natural green
* _Vaxen_ -- Takes after a line of minicomputers and workstations

If you don't know which variant to pick, the "CDE" theme is a very reasonable
choice. Otherwise, you can try each yourself and determine which you like most.

Installation
------------
The installation process essentially includes just two steps:

1. Run "make" to generate the configurations
2. Copy the desired config file to the proper location

You can first build the Fvwm configurations by typing "make". This will create
individual config files within the "out" directory. For installing a
configuration system-wide, copy the desired config file to the system-wide
location for Fvwm configurations. On Debian GNU/Linux, the file path is:

    /etc/X11/fvwm/config

Another possible location may be:

    /usr/local/share/fvwm/config

To install the configuration just for yourself, the file path to copy the
"config" file to is the following:

    $HOME/.fvwm/config

If you do not know which configuration file to choose, try "cde", which gives
the look of a classic Unix workstation environment. An example of installing
this to your home directory would be the following:

    $ mkdir -p ~/.fvwm
    $ make
    $ cp out/cde/config ~/.fvwm/config

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
