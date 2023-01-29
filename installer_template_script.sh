#!/bin/bash

echo ""
echo "Verilog GUI Installer"
echo ""

# Create destination folder
DESTINATION="${HOME}/verilator_gui"
mkdir -p ${DESTINATION}

# Find __ARCHIVE__ maker, read archive content and decompress it
ARCHIVE=$(awk '/^__ARCHIVE__/ {print NR + 1; exit 0; }' "${0}")
tail -n+${ARCHIVE} "${0}" | tar xpJv -C ${DESTINATION}

# Put your logic here (if you need)

chmod +x ${HOME}/verilator_gui/dist/bin/*
export VERILATOR_ROOT=${HOME}/verilator_gui/dist
export PATH=$VERILATOR_ROOT/bin:$PATH

echo ""
echo "Installation complete."
echo ""

# Exit from the script with success (0)
exit 0

__ARCHIVE__