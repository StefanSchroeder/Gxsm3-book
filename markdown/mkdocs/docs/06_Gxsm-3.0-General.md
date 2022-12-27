# Program Start {#ch:start}

This chapter describes the very basics of  usage: the start of the
program. In a modern Gnome3 (gnome-shell based) desktop environment with
a proper installed gxsm3 you will find the  in the Aplication menu, can
seek via gnome-sell command, etc. and place it into your quick start
application bar.

However, some of its behavior can be modified using the command line
parameters described in section
[1.1](#sec:start:command-line-pars){reference-type="ref"
reference="sec:start:command-line-pars"}.

## Command line parameters {#sec:start:command-line-pars}

To start from a command line just type -- no special options at all:\
\
Or for temporary hardware disabling, very handy for data analysis on
your system configured for hardware usage by default:\

To list all understood command lien options type:

\

    ~$ gxsm3 --help
    Usage:
    gxsm3 [OPTION...] List of loadable file(s) .nc, ...

    Help Options:
    -?, --help                                 Show help options
    --help-all                                 Show all help options
    --help-gtk                                 Show GTK+ Options

    Application Options:
    -V, --version                              Show the application's version
    -h, --hardware-card                        Hardware Card: no | ... (depends on available HwI plugins)
    -d, --Hardware-DSPDev                      Hardware DSP Device Path: /dev/sranger0 | ... (depends on module type and index if multiple DSPs)
    -u, --User-Unit                            XYZ Unit: AA | nm | um | mm | BZ | sec | V | 1 
    -L, --logging-level                        Set Gxsm logging/monitor level. omit all loggings: 0, minimal logging: 1, default logging: 2, verbose logging: 3, ...
    -m, --load-files-as-movie                  load file from command in one channel as movie
    --disable-plugins                          Disable default plugin loading on startup
    --force-configure                          Force to reconfigure Gxsm on startup
    --force-rebuild-configuration-defaults     Forces to restore all GXSM values to build in defaults at startup
    --write-gxsm-preferences-gschema           Generate Gxsm preferences gschema file on startup with build in defaults and exit
    --write-gxsm-gl-preferences-gschema        Generate Gxsm GL preferences gschema file on startup with build in defaults and exit
    --write-gxsm-pcs-gschema                   Generate Gxsm pcs gschema file on startup with build in defaults while execution
    --write-gxsm-pcs-adj-gschema               Generate Gxsm pcs adjustements gschema file on startup with build in defaults while execution
    -D, --debug-level=DN                       Set Gxsm debug level. 0: no debug output on console, 1: normal, 2: more verbose, ...5 increased verbosity
    -P, --pi-debug-level=PDN                   Set Gxsm Plug-In debug level. 0: no debug output on console, 1: normal, 2: more verbose, ...5 increased verbosity
    -s, --new-instance                         Start a new instance of gxsm3 -- not yet functional, use different user account via ssh -X... for now.
    --display=DISPLAY                          X display to use

::: center
::: {#tab:command-line}
  Parameter                    Description
  ---------------------------- ---------------------------------------------------
  -h, --Hardware-Card=*type*   set up type of hardware
  no                           do not use any hardware, analysis/simulation mode
  ...                          depends on available HwIs
  -u, --User-Unit=*unit*       XYZ unit
  AA                           Å, $1e-10$ m
  nm                           nm, $1e-9$ m
  --disable-plugins            Disables the loading of plugins on startup
                               mainly for debugging.

  : commando line parameters for calling Gxsm
:::
:::

Right after the options shown above you can list files for opening to
the free channels.

All known formats ([\[pi:WSxMio\]](#pi:WSxMio){reference-type="ref"
reference="pi:WSxMio"}[\[pi:nanoimport\]](#pi:nanoimport){reference-type="ref"
reference="pi:nanoimport"}[\[pi:OmicronIO\]](#pi:OmicronIO){reference-type="ref"
reference="pi:OmicronIO"}[\[pi:primitiveimexport\]](#pi:primitiveimexport){reference-type="ref"
reference="pi:primitiveimexport"}[\[pi:sdfimport\]](#pi:sdfimport){reference-type="ref"
reference="pi:sdfimport"}[\[pi:UK2kimport\]](#pi:UK2kimport){reference-type="ref"
reference="pi:UK2kimport"}[\[pi:gmeyerimexport\]](#pi:gmeyerimexport){reference-type="ref"
reference="pi:gmeyerimexport"}[\[pi:spa4imexport\]](#pi:spa4imexport){reference-type="ref"
reference="pi:spa4imexport"}[\[pi:GdatImExport\]](#pi:GdatImExport){reference-type="ref"
reference="pi:GdatImExport"}[\[pi:PsiHDFimexport\]](#pi:PsiHDFimexport){reference-type="ref"
reference="pi:PsiHDFimexport"}[\[pi:pngImExport\]](#pi:pngImExport){reference-type="ref"
reference="pi:pngImExport"}) are autodetected.

# The main window {#ch:main}

After startup, the main window appears. The actual user interface
provided by the main window depends on the configuration (compare
Fig. [\[fig:screenshot:gxsm3-main\]](#fig:screenshot:gxsm3-main){reference-type="ref"
reference="fig:screenshot:gxsm3-main"}.  can be configured for use with
SPM techniques, which is the default.

The main window provides two different functions: Firstly, it has a menu
bar with pull-down menus. These menus provide the user with the usual
and menus which can be found in practically every mouse-driven software
piece. Some of these pull-down menus interact with () or start-up ()
other windows. Secondly, the main menu contains a large number of
control fields which can be used, e.g., to control an instrument, or
just display certain parameters. These control fields are described in
the following two sections.

## Understanding the main window's entries: SPM mode {#sec:main:spmentries}

This section explains the contents of the main window (see
Fig. [\[fig:screenshot:gxsm3-main\]](#fig:screenshot:gxsm3-main){reference-type="ref"
reference="fig:screenshot:gxsm3-main"}) for Gxsm running in SPM mode.
The main window contains from top to bottom the menubar, a taskbar, the
scan parameter, view mode, file, and info/comment sections, and a status
and progress bar. The scan parameter and info sections of the main
window are used both for entering parameters during data taking and
displaying them after loading data.

### Scan parameters

Each scan or image is characterized by its size and resolution. The
size, or , gives the scale of the image like the scale of a city map and
denotes the height and width of the scanned area. The resolution is
determined by either the distance between the single scan points/pixels
given by or the number of points in X and Y direction given by . Given
two of these parameters, the third one can be computed. The check box
determines, which of them is calculated by . For instance, if is
checked, a change of results automagically in a new value for .

The parameter determines the distance of the zeropoint of the image
coordinates from the center of the physical scanrange. The actual
location of the zeropoint within the scan depends on the source of the
data. If the data was acquired using , the zeropoint is the middle of
the topmost line. Using , the imaged area can be rotated. Both inputs
using numeric values and the scrollbar are possible.

 can be used to do spatially resolved spectroscopy ("probing") and time
dependent measurements ("movies"). Channels containing probing (or time
dependent) data are essentially three-dimensional (3D) datasets. In
these 3D datasets the X and Y coordinates correspond to the 2D position
like in conventional SPM images. The third dimension can be the voltage
V or the time t.  displays only one slice corresponding to one V or one
t value at a time. denotes the number of points in the V direction, in
the temporal direction.

and are used for the visualization of the scan data. They do not
influence the data itself. See also
Sec. [\[bright-contrast\]](#bright-contrast){reference-type="ref"
reference="bright-contrast"}.

### File and user information

For the users convenience, the filenames for saving new data are
automatically generated. The filename is set together using the and the
scan number. The default for the is the login name of the  user. The
scheme used for generating the filename from the scan number can be
configured in the Preferences on the tab . The scan number is followed
by "-M-" if the image contains additional information besides the bare
2D image like events and point probes. The next part of the file name
indicates the scan direction: Xp or Xm. Finally, the channel name is
attached to the file name. The channel name can be configured on the tab
of the Preferences window. is checked, each new scan is automatically
saved after the scan is finished.

During image analysis it is often convenient to save the "enhanced"
images using an easy to memorize name. Nethertheless, it is often
necessary to get back to the original data. For this purpose, shows the
name of the original data file. This feature works only for files saved
using 's NetCDF format.

The field allows adding comments to scan data, e.g. the name of the
sample. Again, saving this information is supported best for the NetCDF
file format.

## Drag and Drop {#sec:main:DnD}

Gxsm accepts all loadable files via 'drag and drop', e.g. from the
Nautilus and understands VFS file paths. Even dragging URL's pointing to
loadable files on the web is possible.

If you drop a file on a channel-window, it is loaded into that channel.
To create a new window with a new channel bound to it, drop the file
above the main window.

## Keyboard-Accelerators {#sec:main:accel}

Most common used action on a scan-view are assigned to keyboard
accelerators, this is indicated by the Key-Symbol on the right side of a
menu entry. (See pull down/pop-up menus on scan 2D view). F2 for example
triggers a auto-display (auto scale to min-max of all data or via active
rectangle area selection).

# Channels {#ch:channels}

One of the most important features of Gxsm is the
multichannel-capability. Multichannel-capability describes the
simultaneous data acquisition and display from different sources. You
may e.g. at the same time measure topography and friction-forces with
the AFM. Additionally to the simultaneous acquisition of different
signals, the multi-channel feature of  can be used to load multiple
images and, e.g. compare them, or apply more complex operations to them.
Furthermore, it serves as a history mechanism during image manipulation,
because the result of any mathematical operation on one channel does not
overwrite it but is stored in a new channel.

## The channel dialog {#sec:channels:dialog}

The channel dialog pops up selecting in the menu of the main window. You
can use it, to select the displaymode () and the source for data
acquisition () for any channel.

One of the following modes can be chosen, see
[\[Gxsm-Visualisation\]](#Gxsm-Visualisation){reference-type="ref"
reference="Gxsm-Visualisation"} for details:

1.  During data acquisition no data is displayed -- background
    storage/saving only. You can switch view mode any time.

2.  The data are displayed as a grayscaled/false-color image.

3.  Three/multi dimensional data/scan viewer. OpenGL (4.0 minimum)
    based. Can display volume data and slices of multilayered data.

4.  Profile view of the current or all lines.

Usually you will use the mode for data acquisition. If you want to see
the line profiles of the actual scan line, right-click on the window of
the channel, select and activate .

For processing of data several modes are available:

1.  or . Off deletes the channel.

2.  . The most important mode, it sets the active channel. All image
    manipulation is done using this channel. Only one channel can be at
    a time.

3.  Channel, which stores the result of the last operation is
    automatically called .

4.  Needed for several math/image-manipulation, that need more than one
    source.

If you want to activate a channel for data acquisition, please select in
the second column the channel name, i.e. or . This channel will be used
as a target for a scan. The toggle and in the third column defines the
scanning direction at which data are collected. Thus means measurement
of your topography during movement of your scanhead in +X direction. By
chosing or an *experimental* mode is activated in which each scanline is
scanned twice, i.e. this mode is used for magnetic force measurements.
