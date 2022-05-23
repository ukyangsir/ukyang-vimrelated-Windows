" Copyright (C)2022 By ukyang. All Rights Reserved.
" Author: ukyang
" E-mail: ukyang_ma@163.com
" Date: 2022-05-20
" Description:


" autocmTrailing characters:d BufNewFile *.sh,*.py exec ":call SetTitle()"
func SetTitle()
  if expand("%:e") == 'sh'
    call setline(1,"#!/bin/bash")
    call setline(2,"# Copyright (C)".strftime("%Y"). " By ukyang. All Rights Reserved.")
    call setline(3,"# Author: ukyang")
    call setline(4,"# E-mail: ukyang_ma@163.com")
    call setline(5,"# Date: ".strftime("%Y-%m-%d")."")
    call setline(6,"# Description:")
  elseif expand("%:e") == 'vim'
    call setline(1,"\" Copyright (C)".strftime("%Y"). " By ukyang. All Rights Reserved.")
    call setline(2,"\" Author: ukyang")
    call setline(3,"\" E-mail: ukyang_ma@163.com")
    call setline(4,"\" Date: ".strftime("%Y-%m-%d")."")
    call setline(5,"\" Description:")
  elseif expand("%:e") == 'lua'
    call setline(1,"-- Copyright (C)".strftime("%Y"). " By ukyang. All Rights Reserved.")
    call setline(2,"-- Author: ukyang")
    call setline(3,"-- E-mail: ukyang_ma@163.com")
    call setline(4,"-- Date: ".strftime("%Y-%m-%d")."")
    call setline(5,"-- Description:")
  else
    call setline(1,"# Copyright (C)".strftime("%Y"). " By ukyang. All Rights Reserved.")
    call setline(2,"# Author: ukyang")
    call setline(3,"# E-mail: ukyang_ma@163.com")
    call setline(4,"# Date: ".strftime("%Y-%m-%d")."")
    call setline(5,"# Description:")
  endif
endfunc