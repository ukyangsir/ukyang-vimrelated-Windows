-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-06
-- Description:

return {
    cmd = {"typescript-language-server", "--stdio"},
    init_options = {
        hostInfo = "neovim"
    },
    root_dir = function()
        return vim.fn.getcwd()
    end
}
