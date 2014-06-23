FVWM-min
========

Features
--------

"FVWM-min" is a _minimal_ standard configuration for FVWM that provides a sane
and functional set of window manager defaults. FVWM-min is designed for clean
and simple window management without extra clutter. Styles are available for
customizing the look, and are applied with a small shell script.

FVWM-min provides:

* Window management essentials
* Launching core applications
* Six virtual desktops
* Keyboard shortcuts
* Basic support for themes
* Easily customizable

The look and feel is similar to Motif, but with smooth fonts. The defaults are
simple, general, and functional. Try it and see -- this is the FVWM config that
"just works."

Styles
------

A number of styles are available, which provide different color themes. These
color themes are based on classic and familiar Unix workstation user interfaces
like the Motif Window Manager (MWM) and the Common Desktop Environment (CDE):

* _4dwm_ -- Like 4Dwm on IRIX
* _cde_ -- Like the CDE defaults
* _decw1_ -- Like DECWindows with MWM (ULTRIX, OSF/1, VMS)
* _decw2_ -- Like DECWindows with CDE (Digital UNIX, Tru64, OpenVMS)
* _mwm_ -- Like the MWM defaults
* _solar_ -- Like CDE on Solaris
* _twm1_ -- Like TWM defaults in early X11 (maroon)
* _twm2_ -- Like TWM defaults in later X11 (teal)
* _twm3_ -- Like TWM on some Japanese workstations
* _uware_ -- Like CDE on UnixWare
* _vue_ -- Like VUE on early HP-UX

Some original styles are also available:

* _console_ -- Dark style like a VGA text mode console
* _forest_ -- Dense forests and vegetation
* _green_ -- Green screen phosphor terminal
* _min_ -- Monochromatic minimalism
* _minl_ -- Like _min_, but with a lighter backdrop
* _tea_ -- Light and natural colors

See "Choosing a Style" below for more details.

Installation
------------

The per-user installation process includes just a few steps:

1. If "$HOME/.fvwm" exists, make a backup as a precaution
2. Run "make" to build the styles
3. Run "make install" to install the configurations into "$HOME/.fvwm"

Keyboard Shortcuts
------------------

A small number of keyboard shortcuts are defined by default. The most important
to know are the following:

* Ctrl+Alt+T: Launch a terminal
* Ctrl+Alt+C: Launch an xclock
* Ctrl+Alt+K: Close the current window
* Ctrl+Alt+M: Open the Root Menu
* Ctrl+Alt+R: Restart FVWM
* Ctrl+Alt+Up: Navigate to the page above
* Ctrl+Alt+Down: Navigate to the page below

Choosing a Style
----------------

Themes are contained in the _styles_ subdirectory, and the symbolic link
_mystyle_ allows users to select their own. A shell script is provided for
quickly and safely updating this symlink. For example, to choose the theme
"CDE," you might issue the following command:

    $ ~/.fvwm/set-style cde

This will switch to the CDE style and reload FVWM.

Making Customizations
---------------------

Unless you are happy with the most basic window manager functionality such as
working in terminal windows and opening clocks, you may want to add your own
customizations such as new menu entries or keyboard shortcuts. The standard way
to do this is by editing your _config_ file.

The most common and useful customizations are in the three following areas:

1. Menu entries
2. Keyboard and mouse shortcuts
3. _StartFunction_ and _RestartFunction_

The standard _config_ file is structured so the most common and important
things to customize come first. You can open your _config_ file and start
adding menu entries and new keyboard shortcuts quickly and easily.
