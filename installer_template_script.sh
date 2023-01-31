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
VERILATOR_ROOT_PATH=${HOME}/verilator_gui/dist
echo "export VERILATOR_ROOT=${VERILATOR_ROOT_PATH}" >> ${HOME}/.bashrc
echo "export PATH=${VERILATOR_ROOT_PATH}/bin:$PATH" >> ${HOME}/.bashrc

echo ""
echo "Installation complete."
echo "Type in the command"
echo "source ~/.bashrc"
echo "or open a new terminal for changes to take place"
echo ""

# Exit from the script with success (0)
exit 0

__ARCHIVE__
