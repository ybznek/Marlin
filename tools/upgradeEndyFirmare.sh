#!/bin/bash
cd $(dirname "$0")
exec ./upgradeFirmware.sh  /dev/ttyACM0 250000 /marlin/.pio/build/STM32F103RC_btt_512K_USB/firmware.bin 
