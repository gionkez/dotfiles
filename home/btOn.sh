#! /bin/bash

bluetoothctl agent KeyboardOnly
bluetoothctl default-agent
bluetoothctl power on
bluetoothctl connect $deviceMAC
