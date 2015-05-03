# readline
require 'readline'
IRB.conf[:USE_READLINE] = true

# completion
require 'irb/completion'

# indent
IRB.conf[:AUTO_INDENT] = true

# histroy
require 'irb/ext/save-history'
IRB.conf[:HISTORY_FILE] = "~/.irb_history"
IRB.conf[:SAVE_HISTORY] = 100000

# colorize
#require 'wirb'
#Wirb.start
