#!/usr/bin/env python
# encoding: utf-8

import os,sys,atexit

try:
    import rlcompleter
    #rlcompleter.readline.parse_and_bind("tab: complete")
    rlcompleter.readline.parse_and_bind("bind ^I rl_complete")
    #readline.parse_and_bind("bind tab: complete")
    #readline.parse_and_bind("bind tab: rl_complete")
    #readline.parse_and_bind("bind ^I complete")
except Exception as e:
    pass
try:
    import rlcompleter
    home = os.path.expanduser('~')
    pyhistfile = os.path.join(home, '.pyhistory')
    if not os.path.exists(pyhistfile):
        open(pyhistfile,"a").close()
    rlcompleter.readline.read_history_file(pyhistfile)
    rlcompleter.readline.set_history_length(100)
    atexit.register(rlcompleter.readline.write_history_file, pyhistfile)
except Exception as e:
    pass
sys.ps1 = '\001\033[96m\002>>> \001\033[0m\002'
