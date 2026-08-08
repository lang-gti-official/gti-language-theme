local config = require("github_theme.config")

local M = {}

---@param opts? github_theme.Config
function M.load(opts)
  return require("github_theme.theme").setup(opts)
end

M.setup = config.setup

return M
