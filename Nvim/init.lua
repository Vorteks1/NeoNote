-- ~/.config/nvim/init.lua  (one-file, bootstraps lazy, loads lua/plugins/)
vim.g.mapleader = ' '

-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system { 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath }
end
vim.opt.rtp:prepend(lazypath)

-- core opts / maps
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.showbreak = '↪ '
vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>')

-- load plugins + themes folders (modular)
require('lazy').setup({
  { import = 'plugins' },
  { import = 'themes' },
})
