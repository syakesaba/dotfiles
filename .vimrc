" 20130506 SYA-KE .vimrc
" ---------------------------------------------------------------------------
" Essentials
" ---------------------------------------------------------------------------
"This vimrc is ... yes, vim only.
:set nocompatible
"autogroups below should be... enabled as it's from vimrc.
:if has("autocmd")
    :augroup vimrc
        :autocmd!
    :augroup END
:endif
"files have no extension sould be recognized as '[txt]'
:if has("autocmd")
    :autocmd BufEnter *
        \ if &filetype == ""  | setlocal ft=txt | endif
:endif
:scriptencoding utf-8

" ---------------------------------------------------------------------------
" Exsamples
" ---------------------------------------------------------------------------
"Functions should use 'function!' .
"then they will be overridable functions.
:function! Hoge()
    :echo 'hoge'
:endfunction
"Variables should be declared as Local or Global
""""e.g. Global setting
    :set nocompatible
""""e.g. Local(autocmd) setting
:if has("autocmd")
    :autocmd FileType text
        \:setlocal ft=txt
:endif
":autocmd BufNewFile *.py imap

" ---------------------------------------------------------------------------
" Colors
" ---------------------------------------------------------------------------
":highlight Conceal
":highlight Cursor
":highlight CursorIM
:highlight CursorLine term=underline cterm=underline gui=underline ctermbg=none ctermfg=none guibg=none guifg=none
":highlight CursorColumn term=underline cterm=underline gui=underline ctermbg=none ctermfg=white guibg=none guifg=white
:highlight ColorColumn term=italic cterm=none gui=none ctermbg=yellow ctermfg=darkred guibg=yellow guifg=darkred
":highlight Directory
":highlight DiffAdd
":highlight DiffChange
":highlight DiffDelete
":highlight DiffText
":highlight ErrorMsg
":highlight VertSplit
":highlight Folded
":highlight FoldColumn
":highlight SignColumn
:highlight IncSearch term=bold cterm=bold gui=bold ctermbg=white ctermfg=none guibg=white guifg=none
:highlight LineNr term=bold cterm=bold gui=bold ctermbg=black ctermfg=yellow guibg=black guifg=yellow
":highlight CursorLineNr
":highlight MatchParen
:highlight ModeMsg term=bold cterm=bold gui=bold ctermbg=none ctermfg=red guibg=none guifg=red
":highlight MoreMsg
":highlight NonText
":highlight Normal term=bold cterm=bold gui=bold
":highlight Pmenu
":highlight PmenuSel
":highlight PmenuSbar
":highlight PmenuThumb
":highlight Question
:highlight Search term=bold cterm=bold gui=bold ctermbg=white ctermfg=none guibg=white guifg=none
":highlight SpecialKey
":highlight SpellBad
":highlight SpellCap
":highlight SpellLocal
":highlight SpellRare
":highlight TabLine
":highlight TabLineFill
":highlight TabLineSel
":highlight Title
:highlight Visual term=bold cterm=bold gui=bold ctermbg=darkgray ctermfg=none guibg=darkgray guifg=none
":highlight VisualNOS
":highlight WarningMsg
":highlight WildMenu

" ---------------------------------------------------------------------------
" Indent/TAB/Programming
" ---------------------------------------------------------------------------
"indentaion plugin ON!
":filetype plugin indent on
" I hate TAB! I use spaces instead of TAB.
:set expandtab
"default soft TAB takes 4 spaces.
:set shiftwidth=4
"default TAB should be shown as 4 spaces.
:set tabstop=4
"soft TAB takes 4 spaces.
:set softtabstop=4
" if I press ENTER key, TABs will automatically inserted.
:set autoindent
" Smart tabing enable
:set smarttab
" Smart indentation enable
if has('smartindent')
    :setlocal smartindent
:endif
"if you wnat some codes copy&paste to vim, :set paste.
"!note: this will disable all settings on tab,indent!
:set paste

" ---------------------------------------------------------------------------
" File Syntax Coloring/FileType Completention behavior
" ---------------------------------------------------------------------------
"universal syntax highlighting
if has("syntax")
    :syntax on
endif
"in C, use Ccomplete
:autocmd FileType c
    \setlocal omnifunc=ccomplete#Complete

"Fussy
:let mapleader = ","
:let g:mapleader = ","

" ---------------------------------------------------------------------------
" Appearance/Encoding
" ---------------------------------------------------------------------------
"show row number in left side of window.
:set number
"show number as relative. not absolute.
":set relativenumber
"who needs title!? not needed.
:if has('title')
    :setlocal notitle
:endif
"default encoding is UTF-8, it's universal.
:set encoding=utf-8
"alternative encodings
:if has('multi_byte')
    :setlocal fileencodings=utf-8,cp932,euc-jp,iso-2022-jp,utf-16,ucs-2-internal,ucs-2
:endif
"show mode (insert?append?replace?). it will show mode into bottom left.
:set showmode
"show matching '[{(' and ')}]'
:set showmatch
"show command entered(d?x?y?). it will show mode into bottom right.
:if has('cmdline_info')
    :setlocal showcmd
:endif
"show cursorline. it draws horizontal line. (a bit slower drawing..)
:if has("syntax")
    :setlocal cursorline
:endif
"show cursorcolumn. it draws virtical line. (a bit slower drawing..)
:if has("syntax")
    ":setlocal cursorcolumn
:endif
"PEP4. Human beings can see 80 colmns at once.
:set textwidth=79
"PEP4. shows colored 'textwidth colmn' line.
:if exists("+colorcolumn")
    :setlocal colorcolumn=80
:endif
"plz. make sure format normal.
:set formatoptions=n
"allow showing cols over 79. no wraping.
:set nowrap
"make ruler. above line of 'showmode,showmatch,showcmd's line.
:if has('cmdline_info')
    :setlocal ruler
:endif
"scroll window if 30 lines left.
:set scrolloff=30
:if has('scrollbind')
    :setlocal scrollbind
:endif
"more command for large output
:set more

" ---------------------------------------------------------------------------
" StatusLine
" ---------------------------------------------------------------------------
"statusline and ruler(showmode...) shold be always on.
:set laststatus=2
:if has('statusline')
    "for coloring, '%1*%_____%*'
    :highlight StatusLine cterm=none term=none gui=none guifg=black guibg=yellow ctermfg=black ctermbg=yellow
    :highlight StatusLineNC cterm=none term=none gui=none guifg=black guibg=yellow ctermfg=black ctermbg=yellow
    :setlocal statusline +=[Plat.:
    :setlocal statusline +=%1*%{&ff}%* "file format
    :highlight User1 cterm=bold term=bold gui=bold guifg=black guibg=yellow ctermfg=black ctermbg=yellow
    :setlocal statusline +=]
    :setlocal statusline +=[Type:
    :setlocal statusline +=%2*%Y%* "file type
    :highlight User2 cterm=bold term=bold gui=bold guifg=red guibg=yellow ctermfg=red ctermbg=yellow
    :setlocal statusline +=]
    :setlocal statusline +=[Name:\ 
    :setlocal statusline +=%3*%F%* "file name
    :highlight User3 cterm=bold term=bold gui=bold guifg=blue guibg=yellow ctermfg=blue ctermbg=yellow
    :setlocal statusline +=]
    :setlocal statusline +=[
    :setlocal statusline +=%4*%<%{(&fenc!=''?&fenc:&enc)}%* "file encoding
    :highlight User4 cterm=bold term=bold gui=bold guifg=green guibg=yellow ctermfg=green ctermbg=yellow
    :setlocal statusline +=]
    :setlocal statusline +=%5*%=%m%* "modified flag
    :highlight User5 cterm=bold term=bold gui=bold guifg=darkred guibg=yellow ctermfg=darkred ctermbg=yellow
    :setlocal statusline +=\ Line[
    :setlocal statusline +=%6*%1l%* "current line
    :highlight User6 cterm=bold term=bold gui=bold guifg=blue guibg=yellow ctermfg=blue ctermbg=yellow
    :setlocal statusline +=/
    :setlocal statusline +=%7*%L%* "total lines
    :highlight User7 cterm=bold term=bold gui=bold guifg=black guibg=yellow ctermfg=black ctermbg=yellow
    :setlocal statusline +=].
    :setlocal statusline +=%8*%=%1v%* "virtual column number
    :highlight User8 cterm=bold term=bold gui=bold guifg=blue guibg=yellow ctermfg=blue ctermbg=yellow
:endif

" ---------------------------------------------------------------------------
" Multi Editing
" ---------------------------------------------------------------------------
" enable ':ls' command. use ':bn' and ':bp' to go to the next,previous buffer.
:set hidden
" enable file completention for opening them.
:if has('wildmenu')
    :setlocal wildmenu
:endif
" enable longest completention in wildmenu.
:set wildmode=list:longest
"default spliting split and create new window to the right
:set splitbelow splitright

" ---------------------------------------------------------------------------
" Speeding Up
" ---------------------------------------------------------------------------
"make tty fast.it repaints screen more faster.
:set ttyfast
"can scroll even it was poor CPU
:set ttyscroll=3
"make balloon appear immediately.
:if has('balloon_eval')
    :setlocal ballooneval
    :setlocal balloondelay=0
:endif

" ---------------------------------------------------------------------------
" BACKUP/HISTORY
" ---------------------------------------------------------------------------
"remember command histories 1000times.
:set history=1000
"I hate *~ files.
:set nowritebackup
"so, I will not take a backup of my viming.
:set nobackup
"Backup vim history
:if has('viminfo')
    :setlocal viminfo='10,\"100,:20,%,n~/.viminfo
:endif
"no swap! dont make too many files pleeeeaaaz
:set noswapfile
"remenber cursor position when re-opening file.
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" ---------------------------------------------------------------------------
" File I/O
" ---------------------------------------------------------------------------
"enable auto reread when files changing in other processes.
:set autoread

" ---------------------------------------------------------------------------
" Searching behavior
" ---------------------------------------------------------------------------
"Incremental searching! press 'n' to next, 'N' to previous.
:if has('extra_search')
    :setlocal incsearch
:endif
"Highlighting matched string!
:if has('extra_search')
    :setlocal hlsearch
:endif
"dont re-search from end of file to begin of file.
:set nowrapscan
"lowercase includes uppercase, but uppercase not includes lowercase.
:set smartcase
"ignore lower or upper
":set ignorecase

" ---------------------------------------------------------------------------
" Window behavior
" ---------------------------------------------------------------------------
" "Auto adjust window sizes when they become current
"set winwidth=84
"set winheight=5
"set winminheight=5
"set winheight=999
"colorscheme solarized
"set background=light " or dark
"set t_Co=256"

" ---------------------------------------------------------------------------
" Text behavior
" ---------------------------------------------------------------------------
"enable replacing invisible chars. see listchars.
:set list
"converts EOL to '¬',TEB to '>   ',spaces before EOL to '█'
:set listchars=eol:¬,tab:>\ ,trail:█
"Dont show ~C,~M but <0C> <0D>
:set display=uhex,lastline
"show EOL
":set endofline

" ---------------------------------------------------------------------------
" Key behavior
" ---------------------------------------------------------------------------
"BACKSPACE key delets 1indent,1EndOfLine(and concat lines),1StartOfInsert
:set backspace=indent,eol,start
"Dont stop cursor when encountered EOF!
:set whichwrap=b,s,h,l,<,>,[,]


" ---------------------------------------------------------------------------
" Cursor behavior
" ---------------------------------------------------------------------------
"change cursor color and blinking in insert mode.
:highlight iCursor cterm=none term=none gui=none guifg=white guibg=none
:set guicursor=i-ci:iCursor-blinkwait100-blinkon150-blinkoff100

" ---------------------------------------------------------------------------
" Alerts behavior
" ---------------------------------------------------------------------------
"when overwrite file, ask Yes or NO
":set confirm
"enable ErrorBell
:set errorbells
" Use visual bell instead of beeping. it's flashing!
:set visualbell

" ---------------------------------------------------------------------------
" Japanese setting
" ---------------------------------------------------------------------------
":if has('multi_byte') && has('termresponse')
"    :setlocal ambiwidth=double
":endif
"notify ZENKAKU Space
:if has('syntax') || has('autocmd')
    :augroup ZenkakuSpace
        :autocmd ColorScheme       * call ZenkakuSpace()
        :autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    :augroup END
    :highlight ZenkakuSpace cterm=underline ctermbg=darkred gui=underline guibg=darkred
:endif
"JapaneseIME CursorHilighting
:if has('multi_byte_ime') || has('xim')
    :highlight CursorIM guibg=Orange guifg=NONE
:endif
