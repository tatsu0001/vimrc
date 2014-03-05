
source ~/_encodingrc

set directory=c:/tmp
set iminsert=0
set number
set laststatus=2
set cmdheight=1
set expandtab
set shiftwidth=4
set tabstop=4
set shellslash

" for NeoBundle
source ~/_neobundlerc
autocmd BufRead ~/_neobundlerc set ft=vim

syntax on
colorscheme desert

" for window open nagivate
set splitbelow
set splitright

" for gui window operation
set guioptions=+aemgTLr

" for Haskell
" autocmd FileType haskell set fenc=utf-8 

" for Clojure
autocmd FileType clojure let g:clojure_align_multiline_strings = 1

" for Scala
autocmd BufNewFile,BufRead *.scala set filetype=scala
autocmd FileType scala set fenc=utf-8 expandtab shiftwidth=2 tabstop=2


" for XmlPrettyPrint
command! FlatStrToPrettyXml :%s/></></g | setf xml | normal gg=G
command! PrettyXmlToFlatStr :%s/^\s\+//g | setf xml | 2,$j!

