-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-04
-- Description:

vim.cmd(
    [[
if has("persistent_undo")
    " 在 config.lua 中定义好了 undotree_dir 全局变量
    let target_path = expand(undotree_dir)
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir = target_path
    set undofile
]]
)
