local config = require("gti_theme.config")

local M = {}

---@param opts? gti_theme.Config
function M.load(opts)
  return require("gti_theme.theme").setup(opts)
end

M.setup = config.setup

return M
