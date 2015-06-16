#!/usr/bin/env python
import os
import sys
import kerberos
import pexpect

from nitrate import NitrateKerbXmlrpc

class TCMS(object):

    def __init__(self, tcms_url="https://tcms.engineering.redhat.com/xmlrpc/"):
        self.tcms_url = tcms_url
        try:
            self.server = NitrateKerbXmlrpc(self.tcms_url).server
        except kerberos.GSSError:
            print "Nitrate login"
            self.user = "ybian"
            self.passwd = ""
            self.kinit(self.user, self.passwd)
            print "Successfully Kinit"
            self.server = NitrateKerbXmlrpc(self.tcms_url).server

    def kinit(self, user, passwd):
        domain_name = 'REDHAT.COM'
        try:
            kinit = pexpect.spawn('kinit ybian')
            kinit.expect('Password for ybian@REDHAT.COM:')
            print kinit.after
            kinit.sendline(passwd)
            index = kinit.expect([pexpect.EOF, pexpect.TIMEOUT])
            print index.kinit.before
        except pexpect.EOF:
            print "Failed to login, you need do kinit firstly"
            sys.exit(255)




if __name__ == '__main__':
    tcms = TCMS()
    tcms.kinit('ybian', '')
