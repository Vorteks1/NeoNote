local cfg   = require("note.cfg")
local pick  = require("telescope.pickers")
local find  = require("telescope.finders")
local conf  = require("telescope.config").values

local M = {}

function M.pick()
  pick.new({}, {
    prompt_title = "Daily notes",
    finder    = find.new_oneshot_job({ "fd", "-e", "md", "--type", "f" }, cfg.root),
    previewer = conf.file_previewer({}),
    sorter    = conf.file_sorter({}),
  }):find()
end

return M
