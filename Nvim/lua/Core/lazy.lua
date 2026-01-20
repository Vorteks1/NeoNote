-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git', 'clone', '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- load plugin specs
require('lazy').setup({
  { import = 'plugins' },
  { import = 'themes' },
}, {
  defaults = { lazy = true, version = false },
  install = { colorscheme = { 'tokyonight', 'catppuccin' } },
  checker = { enabled = true },
})
