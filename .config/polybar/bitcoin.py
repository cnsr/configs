#! /bin/sh
""":"
exec python $0 ${1+"$@"}
"""
import requests, json

print((json.loads(requests.get('https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD').text)['USD']))
