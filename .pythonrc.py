#!/usr/bin/env python
# encoding: utf-8

try:
    import rlcompleter,atexit,os,sys
    pyhistfile=os.getenv("HOME")+"/.pyhistory"
    if not os.path.exists(pyhistfile) or not os.path.isfile(pyhistfile):
        open(pyhistfile,"w").close()
    rlcompleter.readline.read_history_file(pyhistfile)
    rlcompleter.readline.set_history_length(100)
    atexit.register(rlcompleter.readline.write_history_file, pyhistfile)
    rlcompleter.readline.parse_and_bind("tab: complete")
    del pyhistfile,atexit,rlcompleter
except:
    pass
sys.ps1 ="\x1B[1m\x1B[31m>\x1B[33m>\x1B[32m>\x1B[0m "