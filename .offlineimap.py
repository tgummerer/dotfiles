#! /usr/bin/env python
from subprocess import check_output
def get_pass(account):
    return check_output(["/usr/bin/age", "--decrypt", "-i", "/home/tgummerer/.agekey", account]).splitlines()[0]
