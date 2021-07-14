" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
" zo = unfold, zc = fold, zR = unfold all, zM = fold all

" Functions & Commands {{{

    " Word processor mode
    func! WordProcessorMode()
      set formatoptions=an2tq
      set foldcolumn=12
      setlocal spell spelllang=en_us
    endfu
    com! Prose call WordProcessorMode() 

    " Code mode
    func! CodeMode()
      set formatoptions=cql
      set foldcolumn=0
      setlocal nospell
    endfu
    com! Code call CodeMode()

" }}}

lua require 'settings'
lua require 'bindings'
lua require 'plugins'
