return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      theme = 'tokyonight',
      component_separators = '',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'filetype' },
      lualine_y = {
        function()                       -- word count
          local words = vim.fn.wordcount().cursor_words or 0
          return '  ' .. words
        end,
      },
      lualine_z = { 'location' },
    },
  },
}
