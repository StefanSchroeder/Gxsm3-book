#  Quick Start Guide {#cha:Gxsm-quick}

In this chapter, we will briefly described to configure  after
installation to operate one of SoftdB's Open Source SPM controller, i.e.
MK2-A810 or MK3Pro-PLL. Please, make sure that you have installed a
recent version of  and the proper kernel modules before continuing. For
further instructions to install  see
Chap. [\[cha:Gxsm-install\]](#cha:Gxsm-install){reference-type="ref"
reference="cha:Gxsm-install"}. There is also a Chap. explaining how to
upload the DSP binary to your Open Source SPM controller.

## Storing and Restoring Settings {#sec:Gxsm-quick-StoringSettings}

To save and archive/backup simply do this to save it in a file named for
example gxsm3-dconf-dump:\
\
\
\
and to restore simply read it back -- sure this will overwrite any
current settings:\
\
\

To manually inspect it you may use (sure with caution) the dconf-editor
as well.

## Delete Settings {#sec:Gxsm-quick-ResetingSettings}

If required you can delete all settings stored by  in the dconf by\
\
