FVWM Simplicity
===============

## Features

FVWM Simplicity is a set of standard configurations for FVWM that provides a
sane and functional set of window manager defaults. FVWM Simplicity is designed
for people who want clean and simple window management without any cruft. Some
basic themes are available for styling, and can be easily linked in.

Out of the box, basic functionality for managing windows is provided, along
with launching a few core applications, six virtual desktops, and essential
keyboard shortcuts. The look and feel is similar to Motif, but with smooth
fonts. The defaults are simple and functional. The configurations included here
can be easily used as the basis for further per-user configuration, or deployed
as the default for a system-wide installation.

## Themes

A number of styles are available, which provide different color themes. These
color themes are based on classic and familiar Unix workstation user interfaces
like the Motif Window Manager (MWM) and the Common Desktop Environment (CDE):

* _CDE_ -- Like CDE (standard)
* _MWM_ -- Like MWM (standard)
* _Solar_ -- Like CDE on Solaris
* _T64_ -- Like CDE on Tru64 and VMS
* _TWM_ -- Like TWM
* _Ultra_ -- Like MWM on ULTRIX

Original color themes are also available:

* _Console_ -- VGA text mode console
* _Forest_ -- Dense forests and natural surroundings
* _Green_ -- Green screen phosphor terminal
* _Min_ -- Monochromatic minimalism
* _Oxygen_ -- Simple and clean light blue style
* _Rain_ -- Misty marshes and rain

Your theme can be switched by simply changing the symbolic link _mystyle_.

## Installation

The per-user installation process includes just a few steps:

1. If "$HOME/.fvwm" exists, make a backup as a precaution
2. Run "make" to build the styles
3. Run "make install" to install the configurations into "$HOME/.fvwm"

## Keyboard Shortcuts

A small number of keyboard shortcuts are defined by default. The most important
to know are the following:

* Ctrl+Alt+T: Launch a terminal
* Ctrl+Alt+C: Launch an xclock
* Ctrl+Alt+K: Close the current window
* Ctrl+Alt+M: Open the Root Menu
* Ctrl+Alt+R: Restart FVWM
* Ctrl+Alt+Up: Navigate to the page above
* Ctrl+Alt+Down: Navigate to the page below

## Choosing a Theme     

Themes are contained in the _styles_ subdirectory, and the symbolic link
_mystyle_ allows users to select their own. For example, to choose the theme
"CDE," you might issue the following commands:

    $ ln -sf ~/.fvwm/styles/cde ~/.fvwm/mystyle
    $ FvwmCommand Restart

The first command links to the CDE theme, and the second restarts FVWM so the
changes will take effect.

## Making Customizations

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
