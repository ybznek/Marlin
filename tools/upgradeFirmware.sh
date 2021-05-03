#!/bin/bash
port="$1"
baudrate="$2"
from="$3"

# ./upgradeFirmware.sh  /dev/ttyACM0 250000 /3dp/marlin/myRepo/Marlin/.pio/build/BIGTREE_SKR_PRO/firmware.bin


time \
	python3 /home/z/Dropbox/OpenSCAD/marlin/myRepo/marlin-binary-protocol/transfer.py \
	-p "$port" -b "$baudrate" -c "$from" firmware.bin && {
		echo "Uploaded successfully"
		echo "M997" > "$port" 
}
