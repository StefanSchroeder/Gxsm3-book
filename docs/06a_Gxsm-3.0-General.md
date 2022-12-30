# Program Start {#ch:start}

This chapter describes the very basics of GXSM usage: the start of the
program. In a modern Gnome3 (gnome-shell based) desktop environment with
a proper installed gxsm3 you will find the GXSM in the Aplication menu,
can seek via gnome-sell command, etc. and place it into your quick start
application bar.

However, some of its behavior can be modified using the command line
parameters described in section
[X.X](#sec:start:command-line-pars){reference-type="ref"
reference="sec:start:command-line-pars"}.

## Command line parameters {#sec:start:command-line-pars}

To start from a command line just type -- no special options at all:\
`gxsm3` or for temporary hardware disabling, very handy for data analysis on
your system configured for hardware usage by default:\
`gxsm3 -h no`

Hint: It is recommended to use this as default handler of
`File\*.nc` Mime-File types, i.e. used by Nautilus to launch
GXSM while clicking a data file. To list all understood command line
options type:

`gxsm3 -- --help`

```
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
```

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

  : Command line parameters for calling Gxsm
:::
:::

Right after the options shown above you can list files for opening to
the free channels.

All known formats are autodetected.

- [\[pi:WSxMio\]](#pi:WSxMio){reference-type="ref" reference="pi:WSxMio"}

- [\[pi:nanoimport\]](#pi:nanoimport){reference-type="ref" reference="pi:nanoimport"}

- [\[pi:OmicronIO\]](#pi:OmicronIO){reference-type="ref" reference="pi:OmicronIO"}

- [\[pi:primitiveimexport\]](#pi:primitiveimexport){reference-type="ref" reference="pi:primitiveimexport"}

- [\[pi:sdfimport\]](#pi:sdfimport){reference-type="ref" reference="pi:sdfimport"}

- [\[pi:UK2kimport\]](#pi:UK2kimport){reference-type="ref" reference="pi:UK2kimport"}

- [\[pi:gmeyerimexport\]](#pi:gmeyerimexport){reference-type="ref" reference="pi:gmeyerimexport"}

- [\[pi:spa4imexport\]](#pi:spa4imexport){reference-type="ref" reference="pi:spa4imexport"}

- [\[pi:GdatImExport\]](#pi:GdatImExport){reference-type="ref" reference="pi:GdatImExport"}

- [\[pi:PsiHDFimexport\]](#pi:PsiHDFimexport){reference-type="ref" reference="pi:PsiHDFimexport"}

- [\[pi:pngImExport\]](#pi:pngImExport){reference-type="ref" reference="pi:pngImExport"}

