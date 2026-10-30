local util = require("gti_theme.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  local aider = util.template(
    [[
assistant-output-color: "${fg}"

completion-menu-color: "${fg_float}"
completion-menu-bg-color: "${bg_float}"
completion-menu-current-color: "${fg_float}"
completion-menu-current-bg-color: "${bg_highlight}"

tool-error-color: "${error}"
tool-output-color: "${blue}"
tool-warning-color: "${warning}"

user-input-color: "${green}"
]],
    colors
  )

  return aider
end

return M
