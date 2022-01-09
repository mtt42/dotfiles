-- variables
local set = vim.opt

-- imports
require("notify")


-- gui
set.showmode       = false
set.cursorline     = true
set.number         = true
set.relativenumber = true
set.termguicolors  = true
set.splitright     = true
set.splitbelow     = true
set.mouse          = 'a'
set.encoding       = 'utf-8'
set.colorcolumn    = '80'
set.signcolumn     = 'number'
set.background     = 'dark'

-- tabs
set.list           = true
set.listchars      = 'tab:»-»'
set.tabstop        = 4
set.softtabstop    = 2
set.shiftwidth     = 2
set.expandtab      = true
set.laststatus     = 0

-- fs
set.undofile       = true
set.undolevels     = 1000
set.undoreload     = 10000
set.autowrite      = true
set.hidden         = true
set.swapfile       = false
