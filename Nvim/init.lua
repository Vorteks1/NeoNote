-- init.lua  –  NeoNote bootstrap
--  ___  _   _     _ _
-- |  _|| \ | |___| | |___
-- |  _||  \| / _ \ | / _ \
-- |_|  |_|\_\___/_|_\___/

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- load core
require 'core.options'
require 'core.keymaps'
require 'core.autocmds'

-- bootstrap lazy.nvim
require 'core.lazy'
