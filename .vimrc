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
:highlight ColorColumn term=none cterm=none gui=none ctermbg=237 ctermfg=darkred guibg=#202020 guifg=darkred
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

" Generated from c:/pdsrc/xterm-222/256colres.h by allcolors.pl
"----------- for $TERM=xterm-256color user only
":highlight x016_Grey0 ctermfg=16 guifg=#000000
":highlight x017_NavyBlue ctermfg=17 guifg=#00005f
":highlight x018_DarkBlue ctermfg=18 guifg=#000087
":highlight x019_Blue3 ctermfg=19 guifg=#0000af
":highlight x020_Blue3 ctermfg=20 guifg=#0000d7
":highlight x021_Blue1 ctermfg=21 guifg=#0000ff
":highlight x022_DarkGreen ctermfg=22 guifg=#005f00
":highlight x023_DeepSkyBlue4 ctermfg=23 guifg=#005f5f
":highlight x024_DeepSkyBlue4 ctermfg=24 guifg=#005f87
":highlight x025_DeepSkyBlue4 ctermfg=25 guifg=#005faf
":highlight x026_DodgerBlue3 ctermfg=26 guifg=#005fd7
":highlight x027_DodgerBlue2 ctermfg=27 guifg=#005fff
":highlight x028_Green4 ctermfg=28 guifg=#008700
":highlight x029_SpringGreen4 ctermfg=29 guifg=#00875f
":highlight x030_Turquoise4 ctermfg=30 guifg=#008787
":highlight x031_DeepSkyBlue3 ctermfg=31 guifg=#0087af
":highlight x032_DeepSkyBlue3 ctermfg=32 guifg=#0087d7
":highlight x033_DodgerBlue1 ctermfg=33 guifg=#0087ff
":highlight x034_Green3 ctermfg=34 guifg=#00af00
":highlight x035_SpringGreen3 ctermfg=35 guifg=#00af5f
":highlight x036_DarkCyan ctermfg=36 guifg=#00af87
":highlight x037_LightSeaGreen ctermfg=37 guifg=#00afaf
":highlight x038_DeepSkyBlue2 ctermfg=38 guifg=#00afd7
":highlight x039_DeepSkyBlue1 ctermfg=39 guifg=#00afff
":highlight x040_Green3 ctermfg=40 guifg=#00d700
":highlight x041_SpringGreen3 ctermfg=41 guifg=#00d75f
":highlight x042_SpringGreen2 ctermfg=42 guifg=#00d787
":highlight x043_Cyan3 ctermfg=43 guifg=#00d7af
":highlight x044_DarkTurquoise ctermfg=44 guifg=#00d7d7
":highlight x045_Turquoise2 ctermfg=45 guifg=#00d7ff
":highlight x046_Green1 ctermfg=46 guifg=#00ff00
":highlight x047_SpringGreen2 ctermfg=47 guifg=#00ff5f
":highlight x048_SpringGreen1 ctermfg=48 guifg=#00ff87
":highlight x049_MediumSpringGreen ctermfg=49 guifg=#00ffaf
":highlight x050_Cyan2 ctermfg=50 guifg=#00ffd7
":highlight x051_Cyan1 ctermfg=51 guifg=#00ffff
":highlight x052_DarkRed ctermfg=52 guifg=#5f0000
":highlight x053_DeepPink4 ctermfg=53 guifg=#5f005f
":highlight x054_Purple4 ctermfg=54 guifg=#5f0087
":highlight x055_Purple4 ctermfg=55 guifg=#5f00af
":highlight x056_Purple3 ctermfg=56 guifg=#5f00d7
":highlight x057_BlueViolet ctermfg=57 guifg=#5f00ff
":highlight x058_Orange4 ctermfg=58 guifg=#5f5f00
":highlight x059_Grey37 ctermfg=59 guifg=#5f5f5f
":highlight x060_MediumPurple4 ctermfg=60 guifg=#5f5f87
":highlight x061_SlateBlue3 ctermfg=61 guifg=#5f5faf
":highlight x062_SlateBlue3 ctermfg=62 guifg=#5f5fd7
":highlight x063_RoyalBlue1 ctermfg=63 guifg=#5f5fff
":highlight x064_Chartreuse4 ctermfg=64 guifg=#5f8700
":highlight x065_DarkSeaGreen4 ctermfg=65 guifg=#5f875f
":highlight x066_PaleTurquoise4 ctermfg=66 guifg=#5f8787
":highlight x067_SteelBlue ctermfg=67 guifg=#5f87af
":highlight x068_SteelBlue3 ctermfg=68 guifg=#5f87d7
":highlight x069_CornflowerBlue ctermfg=69 guifg=#5f87ff
":highlight x070_Chartreuse3 ctermfg=70 guifg=#5faf00
":highlight x071_DarkSeaGreen4 ctermfg=71 guifg=#5faf5f
":highlight x072_CadetBlue ctermfg=72 guifg=#5faf87
":highlight x073_CadetBlue ctermfg=73 guifg=#5fafaf
":highlight x074_SkyBlue3 ctermfg=74 guifg=#5fafd7
":highlight x075_SteelBlue1 ctermfg=75 guifg=#5fafff
":highlight x076_Chartreuse3 ctermfg=76 guifg=#5fd700
":highlight x077_PaleGreen3 ctermfg=77 guifg=#5fd75f
":highlight x078_SeaGreen3 ctermfg=78 guifg=#5fd787
":highlight x079_Aquamarine3 ctermfg=79 guifg=#5fd7af
":highlight x080_MediumTurquoise ctermfg=80 guifg=#5fd7d7
":highlight x081_SteelBlue1 ctermfg=81 guifg=#5fd7ff
":highlight x082_Chartreuse2 ctermfg=82 guifg=#5fff00
":highlight x083_SeaGreen2 ctermfg=83 guifg=#5fff5f
":highlight x084_SeaGreen1 ctermfg=84 guifg=#5fff87
":highlight x085_SeaGreen1 ctermfg=85 guifg=#5fffaf
":highlight x086_Aquamarine1 ctermfg=86 guifg=#5fffd7
":highlight x087_DarkSlateGray2 ctermfg=87 guifg=#5fffff
":highlight x088_DarkRed ctermfg=88 guifg=#870000
":highlight x089_DeepPink4 ctermfg=89 guifg=#87005f
":highlight x090_DarkMagenta ctermfg=90 guifg=#870087
":highlight x091_DarkMagenta ctermfg=91 guifg=#8700af
":highlight x092_DarkViolet ctermfg=92 guifg=#8700d7
":highlight x093_Purple ctermfg=93 guifg=#8700ff
":highlight x094_Orange4 ctermfg=94 guifg=#875f00
":highlight x095_LightPink4 ctermfg=95 guifg=#875f5f
":highlight x096_Plum4 ctermfg=96 guifg=#875f87
":highlight x097_MediumPurple3 ctermfg=97 guifg=#875faf
":highlight x098_MediumPurple3 ctermfg=98 guifg=#875fd7
":highlight x099_SlateBlue1 ctermfg=99 guifg=#875fff
":highlight x100_Yellow4 ctermfg=100 guifg=#878700
":highlight x101_Wheat4 ctermfg=101 guifg=#87875f
":highlight x102_Grey53 ctermfg=102 guifg=#878787
":highlight x103_LightSlateGrey ctermfg=103 guifg=#8787af
":highlight x104_MediumPurple ctermfg=104 guifg=#8787d7
":highlight x105_LightSlateBlue ctermfg=105 guifg=#8787ff
":highlight x106_Yellow4 ctermfg=106 guifg=#87af00
":highlight x107_DarkOliveGreen3 ctermfg=107 guifg=#87af5f
":highlight x108_DarkSeaGreen ctermfg=108 guifg=#87af87
":highlight x109_LightSkyBlue3 ctermfg=109 guifg=#87afaf
":highlight x110_LightSkyBlue3 ctermfg=110 guifg=#87afd7
":highlight x111_SkyBlue2 ctermfg=111 guifg=#87afff
":highlight x112_Chartreuse2 ctermfg=112 guifg=#87d700
":highlight x113_DarkOliveGreen3 ctermfg=113 guifg=#87d75f
":highlight x114_PaleGreen3 ctermfg=114 guifg=#87d787
":highlight x115_DarkSeaGreen3 ctermfg=115 guifg=#87d7af
":highlight x116_DarkSlateGray3 ctermfg=116 guifg=#87d7d7
":highlight x117_SkyBlue1 ctermfg=117 guifg=#87d7ff
":highlight x118_Chartreuse1 ctermfg=118 guifg=#87ff00
":highlight x119_LightGreen ctermfg=119 guifg=#87ff5f
":highlight x120_LightGreen ctermfg=120 guifg=#87ff87
":highlight x121_PaleGreen1 ctermfg=121 guifg=#87ffaf
":highlight x122_Aquamarine1 ctermfg=122 guifg=#87ffd7
":highlight x123_DarkSlateGray1 ctermfg=123 guifg=#87ffff
":highlight x124_Red3 ctermfg=124 guifg=#af0000
":highlight x125_DeepPink4 ctermfg=125 guifg=#af005f
":highlight x126_MediumVioletRed ctermfg=126 guifg=#af0087
":highlight x127_Magenta3 ctermfg=127 guifg=#af00af
":highlight x128_DarkViolet ctermfg=128 guifg=#af00d7
":highlight x129_Purple ctermfg=129 guifg=#af00ff
":highlight x130_DarkOrange3 ctermfg=130 guifg=#af5f00
":highlight x131_IndianRed ctermfg=131 guifg=#af5f5f
":highlight x132_HotPink3 ctermfg=132 guifg=#af5f87
":highlight x133_MediumOrchid3 ctermfg=133 guifg=#af5faf
":highlight x134_MediumOrchid ctermfg=134 guifg=#af5fd7
":highlight x135_MediumPurple2 ctermfg=135 guifg=#af5fff
":highlight x136_DarkGoldenrod ctermfg=136 guifg=#af8700
":highlight x137_LightSalmon3 ctermfg=137 guifg=#af875f
":highlight x138_RosyBrown ctermfg=138 guifg=#af8787
":highlight x139_Grey63 ctermfg=139 guifg=#af87af
":highlight x140_MediumPurple2 ctermfg=140 guifg=#af87d7
":highlight x141_MediumPurple1 ctermfg=141 guifg=#af87ff
":highlight x142_Gold3 ctermfg=142 guifg=#afaf00
":highlight x143_DarkKhaki ctermfg=143 guifg=#afaf5f
":highlight x144_NavajoWhite3 ctermfg=144 guifg=#afaf87
":highlight x145_Grey69 ctermfg=145 guifg=#afafaf
":highlight x146_LightSteelBlue3 ctermfg=146 guifg=#afafd7
":highlight x147_LightSteelBlue ctermfg=147 guifg=#afafff
":highlight x148_Yellow3 ctermfg=148 guifg=#afd700
":highlight x149_DarkOliveGreen3 ctermfg=149 guifg=#afd75f
":highlight x150_DarkSeaGreen3 ctermfg=150 guifg=#afd787
":highlight x151_DarkSeaGreen2 ctermfg=151 guifg=#afd7af
":highlight x152_LightCyan3 ctermfg=152 guifg=#afd7d7
":highlight x153_LightSkyBlue1 ctermfg=153 guifg=#afd7ff
":highlight x154_GreenYellow ctermfg=154 guifg=#afff00
":highlight x155_DarkOliveGreen2 ctermfg=155 guifg=#afff5f
":highlight x156_PaleGreen1 ctermfg=156 guifg=#afff87
":highlight x157_DarkSeaGreen2 ctermfg=157 guifg=#afffaf
":highlight x158_DarkSeaGreen1 ctermfg=158 guifg=#afffd7
":highlight x159_PaleTurquoise1 ctermfg=159 guifg=#afffff
":highlight x160_Red3 ctermfg=160 guifg=#d70000
":highlight x161_DeepPink3 ctermfg=161 guifg=#d7005f
":highlight x162_DeepPink3 ctermfg=162 guifg=#d70087
":highlight x163_Magenta3 ctermfg=163 guifg=#d700af
":highlight x164_Magenta3 ctermfg=164 guifg=#d700d7
":highlight x165_Magenta2 ctermfg=165 guifg=#d700ff
":highlight x166_DarkOrange3 ctermfg=166 guifg=#d75f00
":highlight x167_IndianRed ctermfg=167 guifg=#d75f5f
":highlight x168_HotPink3 ctermfg=168 guifg=#d75f87
":highlight x169_HotPink2 ctermfg=169 guifg=#d75faf
":highlight x170_Orchid ctermfg=170 guifg=#d75fd7
":highlight x171_MediumOrchid1 ctermfg=171 guifg=#d75fff
":highlight x172_Orange3 ctermfg=172 guifg=#d78700
":highlight x173_LightSalmon3 ctermfg=173 guifg=#d7875f
":highlight x174_LightPink3 ctermfg=174 guifg=#d78787
":highlight x175_Pink3 ctermfg=175 guifg=#d787af
":highlight x176_Plum3 ctermfg=176 guifg=#d787d7
":highlight x177_Violet ctermfg=177 guifg=#d787ff
":highlight x178_Gold3 ctermfg=178 guifg=#d7af00
":highlight x179_LightGoldenrod3 ctermfg=179 guifg=#d7af5f
":highlight x180_Tan ctermfg=180 guifg=#d7af87
":highlight x181_MistyRose3 ctermfg=181 guifg=#d7afaf
":highlight x182_Thistle3 ctermfg=182 guifg=#d7afd7
":highlight x183_Plum2 ctermfg=183 guifg=#d7afff
":highlight x184_Yellow3 ctermfg=184 guifg=#d7d700
":highlight x185_Khaki3 ctermfg=185 guifg=#d7d75f
":highlight x186_LightGoldenrod2 ctermfg=186 guifg=#d7d787
":highlight x187_LightYellow3 ctermfg=187 guifg=#d7d7af
":highlight x188_Grey84 ctermfg=188 guifg=#d7d7d7
":highlight x189_LightSteelBlue1 ctermfg=189 guifg=#d7d7ff
":highlight x190_Yellow2 ctermfg=190 guifg=#d7ff00
":highlight x191_DarkOliveGreen1 ctermfg=191 guifg=#d7ff5f
":highlight x192_DarkOliveGreen1 ctermfg=192 guifg=#d7ff87
":highlight x193_DarkSeaGreen1 ctermfg=193 guifg=#d7ffaf
":highlight x194_Honeydew2 ctermfg=194 guifg=#d7ffd7
":highlight x195_LightCyan1 ctermfg=195 guifg=#d7ffff
":highlight x196_Red1 ctermfg=196 guifg=#ff0000
":highlight x197_DeepPink2 ctermfg=197 guifg=#ff005f
":highlight x198_DeepPink1 ctermfg=198 guifg=#ff0087
":highlight x199_DeepPink1 ctermfg=199 guifg=#ff00af
":highlight x200_Magenta2 ctermfg=200 guifg=#ff00d7
":highlight x201_Magenta1 ctermfg=201 guifg=#ff00ff
":highlight x202_OrangeRed1 ctermfg=202 guifg=#ff5f00
":highlight x203_IndianRed1 ctermfg=203 guifg=#ff5f5f
":highlight x204_IndianRed1 ctermfg=204 guifg=#ff5f87
":highlight x205_HotPink ctermfg=205 guifg=#ff5faf
":highlight x206_HotPink ctermfg=206 guifg=#ff5fd7
":highlight x207_MediumOrchid1 ctermfg=207 guifg=#ff5fff
":highlight x208_DarkOrange ctermfg=208 guifg=#ff8700
":highlight x209_Salmon1 ctermfg=209 guifg=#ff875f
":highlight x210_LightCoral ctermfg=210 guifg=#ff8787
":highlight x211_PaleVioletRed1 ctermfg=211 guifg=#ff87af
":highlight x212_Orchid2 ctermfg=212 guifg=#ff87d7
":highlight x213_Orchid1 ctermfg=213 guifg=#ff87ff
":highlight x214_Orange1 ctermfg=214 guifg=#ffaf00
":highlight x215_SandyBrown ctermfg=215 guifg=#ffaf5f
":highlight x216_LightSalmon1 ctermfg=216 guifg=#ffaf87
":highlight x217_LightPink1 ctermfg=217 guifg=#ffafaf
":highlight x218_Pink1 ctermfg=218 guifg=#ffafd7
":highlight x219_Plum1 ctermfg=219 guifg=#ffafff
":highlight x220_Gold1 ctermfg=220 guifg=#ffd700
":highlight x221_LightGoldenrod2 ctermfg=221 guifg=#ffd75f
":highlight x222_LightGoldenrod2 ctermfg=222 guifg=#ffd787
":highlight x223_NavajoWhite1 ctermfg=223 guifg=#ffd7af
":highlight x224_MistyRose1 ctermfg=224 guifg=#ffd7d7
":highlight x225_Thistle1 ctermfg=225 guifg=#ffd7ff
":highlight x226_Yellow1 ctermfg=226 guifg=#ffff00
":highlight x227_LightGoldenrod1 ctermfg=227 guifg=#ffff5f
":highlight x228_Khaki1 ctermfg=228 guifg=#ffff87
":highlight x229_Wheat1 ctermfg=229 guifg=#ffffaf
":highlight x230_Cornsilk1 ctermfg=230 guifg=#ffffd7
":highlight x231_Grey100 ctermfg=231 guifg=#ffffff
":highlight x232_Grey3 ctermfg=232 guifg=#080808
":highlight x233_Grey7 ctermfg=233 guifg=#121212
":highlight x234_Grey11 ctermfg=234 guifg=#1c1c1c
":highlight x235_Grey15 ctermfg=235 guifg=#262626
":highlight x236_Grey19 ctermfg=236 guifg=#303030
":highlight x237_Grey23 ctermfg=237 guifg=#3a3a3a
":highlight x238_Grey27 ctermfg=238 guifg=#444444
":highlight x239_Grey30 ctermfg=239 guifg=#4e4e4e
":highlight x240_Grey35 ctermfg=240 guifg=#585858
":highlight x241_Grey39 ctermfg=241 guifg=#626262
":highlight x242_Grey42 ctermfg=242 guifg=#6c6c6c
":highlight x243_Grey46 ctermfg=243 guifg=#767676
":highlight x244_Grey50 ctermfg=244 guifg=#808080
":highlight x245_Grey54 ctermfg=245 guifg=#8a8a8a
":highlight x246_Grey58 ctermfg=246 guifg=#949494
":highlight x247_Grey62 ctermfg=247 guifg=#9e9e9e
":highlight x248_Grey66 ctermfg=248 guifg=#a8a8a8
":highlight x249_Grey70 ctermfg=249 guifg=#b2b2b2
":highlight x250_Grey74 ctermfg=250 guifg=#bcbcbc
":highlight x251_Grey78 ctermfg=251 guifg=#c6c6c6
":highlight x252_Grey82 ctermfg=252 guifg=#d0d0d0
":highlight x253_Grey85 ctermfg=253 guifg=#dadada
":highlight x254_Grey89 ctermfg=254 guifg=#e4e4e4
":highlight x255_Grey93 ctermfg=255 guifg=#eeeeee

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
    :setlocal statusline +=[
    :setlocal statusline +=%1*%F%* "file name
    :highlight User1 cterm=bold term=bold gui=bold guifg=blue guibg=yellow ctermfg=blue ctermbg=yellow
    :setlocal statusline +=]
    :setlocal statusline +=[Plat.:
    :setlocal statusline +=%2*%{&ff}%* "file format
    :highlight User2 cterm=bold term=bold gui=bold guifg=black guibg=yellow ctermfg=black ctermbg=yellow
    :setlocal statusline +=]
    :setlocal statusline +=[Type:
    :setlocal statusline +=%3*%Y%* "file type
    :highlight User3 cterm=bold term=bold gui=bold guifg=red guibg=yellow ctermfg=red ctermbg=yellow
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
"no backup! It's annoying!
:if has('viminf')
    :setlocal viminfo=
:endif
"no swap! dont make too many files pleeeeaaaz
:set noswapfile
"remenber cursor position when re-opening file.
":au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
"  \ exe "normal g`\"" | endif

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
