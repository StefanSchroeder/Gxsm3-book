#
# This is the README.md for the MANUAL
# of GXSM3, the open source SPM solution.
# 

The project is located here:

	https://github.com/pyzahl/Gxsm3

# Quick-Install

	# Download all the necessary packages
	make prepare
	# Build the manual
	make
	# Open the manual
	make view 


# This is the main directory of the Gxsm-Manual

It contains _most_ of the files to generate the
PDF-manual for Gxsm (but not the plug-in documentation
which is embedded in the plug-ins).

Run 'make' to generate Gxsm-3.0-Manual.pdf
Run it again, because the index is compiled in two passes.

Run 'make clean' to remove the log files and auxilaury files
from the current directory.

FIXME: HTML generation doesnt work 05/2015.
Run 'make html' to create a HTML version in 'html'.

The document is pretty sophisticated and requires a 
number of packages as dependencies. The bootstrap-scripts
should take care of retrieving all the necessary 
latex-packages. If your latex-distro is not supported,
please let us know in the forums. Please contribute
the instructions for your distro if you have been
able to figure the dependencies out yourself.

