#!/usr/bin/env python
# encoding: utf-8

import os
import sys
import atexit

PYTHON_VERSION = sys.version_info[0]

def rcprintfunc(s):
    os.stdout.write(s+os.linesep)

#===============Completention
try:
    import rlcompleter
    import readline
    if "libedit" in readline.__doc__:
        #BSD with libedit
        readline.parse_and_bind("bind -e")
        readline.parse_and_bind("bind '\t' rl_complete")
    else:
        readline.parse_and_bind("tab: complete")
except ImportError as e:
    pass
except Exception as e:
    rcprintfunc("Unknown error at " + __file__,e)

#===============History
try:
    import rlcompleter
    import readline
    home = os.path.expanduser('~')
    pyhistfile = os.path.join(home, '.pyhistory')
    with open(pyhistfile, 'a'):
        os.utime(pyhistfile, None)
    if hasattr(readline, "read_history_file"):
        try:
            readline.read_history_file(pyhistfile)
        except IOError as e:
            #First time
            pass
    readline.set_history_length(100)
    atexit.register(readline.write_history_file, pyhistfile)
except Exception as e:
    rcprintfunc("Unknown error at " + __file__,e)

#===============Miscellaneous
sys.ps1 = '>> '
#sys.ps1 = '\001\033[96m\002>>> \001\033[0m\002'

