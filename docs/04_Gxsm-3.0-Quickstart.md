# GXSM Quick Start Guide {#cha:Gxsm-quick}

In this chapter, we will briefly described to configure GXSM after
installation to operate one of SoftdB's Open Source SPM controller, i.e.
MK2-A810 or MK3Pro-PLL. Please, make sure that you have installed a
recent version of GXSM and the proper kernel modules before continuing.
For further instructions to install GXSM see
Chap. [\[cha:Gxsm-install\]](#cha:Gxsm-install){reference-type="ref"
reference="cha:Gxsm-install"}. There is also a chapter explaining how to
upload the DSP binary to your Open Source SPM controller.

GXSMHintIn case, you want to start over with 'fresh' settings, please
follow the instructions below in
Sec. [1.2](#sec:Gxsm-quick-ResetingSettings){reference-type="ref"
reference="sec:Gxsm-quick-ResetingSettings"}

## Storing and Restoring Settings {#sec:Gxsm-quick-StoringSettings}

To save and archive/backup simply do this to save it in a file named for
example gxsm3-dconf-dump:

`dconf dump /org/gnome/gxsm3/ $>$ gxsm3-dconf-dump`

and to restore simply read it back -- sure this will overwrite any
current settings:

`dconf load /org/gnome/gxsm3/ $>$ gxsm3-dconf-dump `

GXSMNote It is strongly adviced to exit GXSM while storing/restoring
settings.

To manually inspect it you may use (sure with caution) the dconf-editor
as well.

## Delete Settings {#sec:Gxsm-quick-ResetingSettings}

If required you can delete all settings stored by GXSM in the dconf by

`dconf reset -f /org/gnome/gxsm3/ `

GXSMNote The / at the command is
important to manipulate the whole tree and not just a single entry.
