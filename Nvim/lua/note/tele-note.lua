local cfg = require("note.cfg")
local tele = require("telescope.builtin")
local themes = require("telescope.themes")

local M = {}

function M.files()
  tele.find_files(themes.get_dropdown({
    cwd = cfg.root,
    hidden = true,
  }))
end

function M.grep()
  tele.live_grep(themes.get_dropdown({
    cwd = cfg.root,
  }))
end

return M
