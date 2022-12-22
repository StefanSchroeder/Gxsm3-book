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
        look_for_plugins=$(find ~ -name plug-ins | grep Gxsm | head -1)
        if [ -d $look_for_plugins ] ; then
	    echo "Symlinking plug-ins of Gxsm-3.0."
            ln -v -s "$look_for_plugins" .
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
./helpers/docuscangxsmplugins.pl | tail - -n14 > docuscan.log

pushd src/
latexmk -pdf Gxsm-3.0-Manual.tex
makeindex -s gindx.ist Gxsm-3.0-Manual.idx
popd

cat docuscan.log

if [ -f ./src/Gxsm-3.0-Manual.pdf ] ; then
   echo "Manual generated.................... : ./src/Gxsm-3.0-Manual.pdf"
else
   echo "ERROR: There was a problem generating: ./src/Gxsm-3.0-Manual.pdf"
fi

echo "Done."

