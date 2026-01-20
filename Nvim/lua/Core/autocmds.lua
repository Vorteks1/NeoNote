-- auto-cd to notes root when opening a markdown file outside it
local au = vim.api.nvim_create_autocmd
au('BufEnter', {
  pattern = '*.md',
  callback = function(args)
    local notes = vim.g.notes_root
    local bufdir = vim.fn.fnamemodify(args.file, ':p:h')
    if not bufdir:match('^' .. vim.pesc(notes)) then
      vim.cmd.cd(notes)
    end
  end,
})
