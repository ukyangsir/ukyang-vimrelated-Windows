-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-29
-- Description:

-- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.showmode = false
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.pumheight = 10

-- 顶部 tab 标签放在第几行
vim.o.showtabline = 0
-- 底部状态栏放在第几行
vim.o.laststatus = 0
-- 是否开启折行
vim.o.wrap = true
vim.wo.wrap = true
-- 是否使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 设定背景色为暗或亮
vim.o.background = "dark"
-- 是否开启 xterm 兼容的终端 24 位色彩支持
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 目录后加上反斜杠 /
vim.g.nvim_tree_add_trailing = 1
-- 是否开启语法高亮
vim.o.syntax = "enable"
-- 是否启用系统剪切板
vim.o.clipboard = "unnamedplus"
-- 是否允许隐藏被修改过的buffer（即是否允许缓冲区未保存时就切换）
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 是否开启备份文件
vim.o.backup = false
vim.o.writebackup = false
-- 是否开启交换文件
vim.o.swapfile = false
-- 设定各种文本的字符编码
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
-- jk移动时光标下上方保留几行
vim.o.scrolloff = 30
vim.o.sidescrolloff = 30
-- 高亮所在行
vim.wo.cursorline = true
-- 是否显示不可见字符（不同的语言对这个要求不一样，所以一样要通过 ftplugin 来进行具体设置）
-- vim.o.list = true
-- vim.o.listchars = "space:·"
-- 是否开启自动缩进
vim.o.autoindent = true
vim.bo.autoindent = true
-- 设定自动缩进的策略为 plugin
vim.o.filetype = "plugin"
-- 是否开启搜索高亮
vim.o.hlsearch = true
-- 是否在插入括号时短暂跳转到另一半括号上
vim.o.showmatch = true
-- 是否开启命令行补全增强
vim.o.wildmenu = true
-- 是否在搜索时忽略大小写，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 是否开启单词拼写检查
vim.o.spell = false
-- 设定单词拼写检查的语言
vim.o.spelllang = "en_us,cjk"
-- 是否开启代码折叠
vim.o.foldenable = true
-- 指定代码折叠的策略是按照缩进进行的
vim.o.foldmethod = "indent"
-- 指定代码折叠的最高层级为 100
vim.o.foldlevel = 100
-- 行结尾可以跳到下一行
vim.o.whichwrap = "b,s,<,>,[,],h,l"
-- 是否在屏幕最后一行显示命令
vim.o.showcmd = true
-- 设置命令行高为1，提供足够的显示空间
vim.o.cmdheight = 1
-- 当文件被外部程序修改时，是否自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 是否将新行对齐当前行
vim.o.smartindent = true
-- 是否用 space 替代 tab（这个通过 ftplugin 设置）
-- vim.o.expandtab = true
-- vim.bo.expandtab = true
-- >> << 时移动长度（这个通过 ftplugin 设置）
-- vim.o.shiftwidth = 2
-- vim.bo.shiftwidth = 2
-- 设置缩几个空格等于一个Tab（这个通过 ftplugin 设置）
-- vim.o.tabstop = 4
-- vim.bo.tabstop = 4
-- vim.o.softtabstop = 4
-- 缩进列数是否对齐到 shiftwidth 的整数倍
vim.o.shiftround = true
-- 是否设置分屏从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 设定在无操作时，交换文件刷写到磁盘的等待毫秒数（默认为 4000）
-- vim.o.updatetime = 300
-- 设定等待按键时长的毫秒数，默认1000ms，可以设置更短
vim.o.timeoutlen = 500
-- 边输入边搜索
vim.o.incsearch = true
-- 是否透明背景
vim.g.background_transparency = true
-- 指定undotree缓存存放路径
vim.g.undotree_dir = "~/.cache/nvim/undodir"
-- 指定代码片段存储路径
vim.g.vsnip_snippet_dir = "~/.config/nvim/snippet"
-- copilot 启用设置
vim.g.copilot_no_tab_map = true
-- markdown preview设置
-- vim.g.nvim_markdown_preview_theme = "solarized-light"
-- vim.g.nvim_markdown_preview_format = "markdown"
vim.g.instant_markdown_browser = "/mnt/c/Users/mayang/AppData/Local/Google/Chrome/Application/chrome.exe"
-- vim.g.instant_markdown_slow = 1
vim.g.instant_markdown_logfile = "/tmp/instant_markdown.log"
vim.g.instant_markdown_mathjax = 1
vim.g.instant_markdown_mermaid = 1
vim.g.instant_markdown_autostart = 0

require("lsp.lspsaga")
require("lsp.nvim-cmp")
require("lsp.nvim-lsp-installer") -- g系列快捷键
require("lsp.nvim-lspconfig")

require("plugin_config.auto-session")
require("plugin_config.autosave")
-- require('plugin-config.bufferline')
require("plugin_config.comment") -- 代码格式化快捷键
require("plugin_config.copilot") -- copilot专属快捷键
require("plugin_config.fidget")
require("plugin_config.gitsigns")
require("plugin_config.hop") -- leader 退出
require("plugin_config.indent-blankline")
require("plugin_config.lsp_signature")
require("plugin_config.neoformat")
require("plugin_config.nvim-autopairs")
require("plugin_config.nvim-colorizer")
require("plugin_config.nvim-hlslens")
require("plugin_config.nvim-lastplace")
-- WARN: 这里的灯泡显示以及代码动作有bug
require("plugin_config.nvim-lightbulb")
require("plugin_config.nvim-lint")
require("plugin_config.nvim-notify")
require("plugin_config.nvim-scrollbar")
require("plugin_config.nvim-spectre") -- <leader>rf/p 后，内部<leader>相关快捷键
require("plugin_config.nvim-tree") -- nvim-tree 有一些快捷键
require("plugin_config.nvim-treesitter")
require("plugin_config.spellsitter")
require("plugin_config.surround") -- ys/ds/cs
require("plugin_config.switch")
require("plugin_config.telescope") -- alt 系列快捷键
require("plugin_config.todo-comments") -- 几个高亮标签
require("plugin_config.toggleterm")
require("plugin_config.undotree")
require("plugin_config.vim-illuminate")
require("plugin_config.vim-multiple-cursors") -- gm，alt 系列（alt + b 取消），sd
require("plugin_config.vista")
require("plugin_config.which-key")
require("plugin_config.windline")

require("theme.catppuccin")

require("keybindings")
