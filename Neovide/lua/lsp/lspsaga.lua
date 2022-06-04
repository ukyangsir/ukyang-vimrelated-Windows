-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-05
-- Description:

local lspsaga = require "lspsaga"
lspsaga.setup {
    -- defaults ...
    debug = false,
    use_saga_diagnostic_sign = true,
    -- diagnostic sign
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    -- code action title icon
    code_action_icon = " ", -- 正在写入的行提示
    code_action_prompt = {
        enable = true, -- 显示写入行提示，如果为 true，则写代码时会在左侧行号栏中显示你所定义的图标
        sign = true,
        sign_priority = 40,
        virtual_text = true
    },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10,
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>"
    },
    code_action_keys = {
        -- 快捷键配置
        quit = "<Esc>",
        exec = "<CR>"
    },
    rename_action_keys = {
        quit = "<Esc>",
        exec = "<CR>"
    },
    definition_preview_icon = "  ",
    border_style = "round", -- 提示边框样式：round、single、double
    rename_prompt_prefix = "➤",
    rename_output_qflist = {
        enable = false,
        auto_open_qflist = false
    },
    server_filetype_map = {},
    diagnostic_prefix_format = "%d. ",
    diagnostic_message_format = "%m %c",
    highlight_prefix = false
}
