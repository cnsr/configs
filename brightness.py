#!/usr/bin/env python
#-*- coding: utf-8 -*-

import subprocess
import time

def sendmessage(message):
    subprocess.Popen(['notify-send', message])
    return

def brightness():
    time.sleep(0.1)
    with open('/sys/class/backlight/acpi_video0/brightness', 'r') as f:
        return float(f.read()) / 15 * 100

try:
    sendmessage(("Brightness %.1f" % brightness() + "%"))
except Exception as e:
    pass
