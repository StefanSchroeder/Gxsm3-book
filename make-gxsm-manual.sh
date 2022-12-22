#!/bin/bash
# This bash script generates the manual for Gxsm.
# 1. Look for embedded plugin documentation.
# 2. Call pdflatex
# 3. Generate index.
#
# Don't forget to run this script twice to get up-to-date references.
# 

if [ -z `which pdflatex` ] ; then
    echo "FATAL: You don't have pdflatex. Sorry."
    exit
fi

# We want to include the embedded documentation from the plug-in's sources
# Make sure we have a soft link to the plug-ins folder:
if test -L "plug-ins"; then
    echo "Found symlink to plug-ins: OK"
else
    # Take a guess
    if [ -d ../gxsm3-svn/plug-ins ] ; then
        echo "Symlinking plug-ins of Gxsm-3.0."
        ln -s ../gxsm3-svn/plug-ins .
    # Take another guess
    elif [ -d ../Gxsm-3.0/plug-ins ] ; then
        echo "Symlinking plug-ins of Gxsm-3.0."
        ln -s ../Gxsm-3.0/plug-ins .
    else
        look_for_plugins=$(find ~ -name plug-ins | grep Gxsm-3.0 | head -1)
        if [ -d $look_for_plugins ] ; then
	    echo "Symlinking plug-ins of Gxsm-3.0."
            ln -s "$look_for_plugins" .
        else
            # All attempts to find the plug-ins folder failed.
            # Ask user.
            echo "Could not find your Gxsm-3.0 sources in the default location."
            echo "Please provide the full path to the plug-ins directory."
            echo "[e.g. ~/gxsm3-svn/plug-ins]"
            read pluginpath
            if [ -d $pluginpath ] ; then 
                echo "The path you entered looks ok."
                ln -s "$pluginpath" .
            else
                echo "WARN: The path you entered is not ok."
                echo "Unable to find plug-ins. They will not be included in the manual."
            fi
        fi
    fi
fi

# Now harvest the plug-ins.
./docuscangxsmplugins.pl | tail - -n14 > docuscan.log

# Getting missing images from older GXSM2 manual

FILES=(SPALEED-Control.png NanoPlott.png SPMScanControl.png UKSOFT2001_file_dialog.png UKSOFT2001_multifile.png quicktime_export_file.png quicktime_export_setup1.png quicktime_export_setup2.png PanView_indicators.png GxsmPI_pyremote01.png SR-DSP-Control-FB.png SR-DSP-Control-Advanced.png SR-DSP-Control-Trigger.png SR-DSP-Control-Advanced-Raster.png SR-DSP-Control-STS.png SR-DSP-Control-Z.png SR-DSP-Control-LM.png SR-DSP-Control-PL.png SR-DSP-Control-LockIn.png SR-DSP-Control-AX.png SR-DSP-Control-Graphs.png SR-DSP-Mover.png SR-DSP-Mover-Auto.png SR-spm-control.png SR-spm-control-AIC-Offset.png SR-spm-control-CR-ratemeter.png SR-spm-control-gain.png SR-spm-control-info.png SR-spm-control-settings.png SR-CR-Stage-LVDT-Control.png A810-DSP-Control-STS-demo-IVdIdV.png A810-DSP-Control-STS-LCK-demo-IVdIdV.png /A810-DSP-Control-STS-Graphs-demo-IVdIdV.png A810-DSP-Control-STS-demo-IVdIdV-data.png A810-DSP-Control-STS-demo.png A810-DSP-Control-STS-demo-graph.png A810-DSP-Control-STS-demo-plot.png signal-graph.pdf MK3-spm-configurator-apps.png MK3-spm-configurator-A810-mon.png MK3-spm-configurator-2-signal-mon.png MK3-spm-configurator-2-signal-mon-meter.png MK3-spm-configurator-2-signal-mon-meter-rangefix.png MK3-spm-configurator-2-signal-patchrack1.png MK3-spm-configurator-2-signal-patchrack2.png MK3-spm-configurator-2-signal-patchrack3.png MK3-spm-configurator-2-signal-manager.png MK3-spm-configurator-6-scope.png MK3-spm-configurator-2-signal-patchrack-PLL-scope.png MK3-Gxsm-PLL-Control-op.png MK3-Gxsm-PLL-Control-phase0.png MK3-spm-configurator-7-tuneapp-initial.png MK3-spm-configurator-7-tuneapp-phase-set.png MK3-spm-configurator-6-scope-PACsig.png MK3-Gxsm-PLL-Control-phase-set.png MK3-Gxsm-PLL-Control-PAC-Ampl-FB.png MK3-Gxsm-PLL-Control-PAC-ampl-phase-FB.png MK3-DSP-Control-FB.png MK3-DSP-Control-FB-w-Mservo.png MK3-DSP-Control-LockIn.png MK3-DSP-Control-LM.png MK3-DSP-Control-Graphs-LM.png MK3-SmartPiezoDriveControl-Link.png)

check() {
	echo -n "checking $PWD/sceenshots/$1: "
	if [ -f "$PWD/screenshots/$1" ]; then
		echo 'ok'
	else
		echo "missing"
		if [ -L "$PWD/screenshots/$1" ]; then
			rm -rf "$PWD/screenshots/$1"
		fi
		svn export "https://svn.code.sf.net/p/gxsm/svn/trunk/Gxsm-2.0-Manual/img/$1" ./screenshots/
	fi
}

for ITEM in "${FILES[@]}"
do
    check "$ITEM"
done

latexmk -pdf -pv Gxsm-3.0-Manual.tex
makeindex -s gindx.ist Gxsm-3.0-Manual.idx

cat docuscan.log

if [ -f ./Gxsm-3.0-Manual.pdf ] ; then
   echo "Manual generated.................... : ./Gxsm-3.0-Manual.pdf"
else
   echo "ERROR: There was a problem generating: ./Gxsm-3.0-Manual.pdf"
fi

echo "Done."

