#!/bin/bash

echo ""
echo "Downloading Verilator"
echo ""

git clone https://github.com/verilator/verilator ~/.verilator  # Only first time

# Every time you need to build:
unset VERILATOR_ROOT  
git --git-dir='~/.verilator/.git' pull         # Make sure git repository is up-to-date
git --git-dir='~/.verilator/.git' checkout stable      # Use most recent stable release

echo ""
echo "Installing Verilator"
echo ""

$(cd ~/.verilator; autoconf)         # Create ./configure script
./configure      # Configure and create Makefile
make -j `nproc`  # Build Verilator itself (if error, try just 'make')
sudo make install

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

echo ""
echo "Installation complete."
echo ""

# Exit from the script with success (0)
exit 0

__ARCHIVE__