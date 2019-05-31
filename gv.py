#!/usr/bin/python3
# -*- coding: utf-8 -*-

from six.moves import input
from googlevoice import Voice

def run():
    voice = Voice()
    voice.login(email = "xxx@gmail.com", passwd = "xxx")

    phoneNumber = "8336721001"
    text = "cloudflare.com"

    voice.send_sms(phoneNumber, text)


__name__ == "__main__" and run()
