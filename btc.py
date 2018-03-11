#!/usr/bin/env python
#-*- coding: utf-8 -*-

import subprocess
import requests, json

def sendmessage(message):
    subprocess.Popen(['notify-send', message])
    return

try:
    sendmessage(("฿ %.2f" % json.loads(requests.get('https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD').text)['USD']))
except Exception as e:
    print(e)

