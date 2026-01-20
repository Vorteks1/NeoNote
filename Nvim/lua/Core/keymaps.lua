-- global keymaps
local k = vim.keymap.set
k('n', '<leader>w', '<Cmd>w<CR>')
k('n', '<leader>q', '<Cmd>q<CR>')
-- quick access to note pickers (defined later)
k('n', '<leader>ff', function() require('note.tele-note').files() end)
k('n', '<leader>fg', function() require('note.tele-note').grep()  end)
k('n', '<leader>fd', function() require('note.tele-dailies').pick() end)
