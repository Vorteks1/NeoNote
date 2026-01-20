local M = {}
M.root = vim.g.notes_root or vim.fn.expand("~/notes")
M.daily = function()
  return M.root .. "/" .. os.date("%Y-%m-%d") .. ".md"
end
return M
