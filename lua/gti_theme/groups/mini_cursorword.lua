local M = {}

M.url = "https://github.com/echasnovski/mini.cursorword"

---@type gti_theme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniCursorword        = { bg = c.fg_gutter },
    MiniCursorwordCurrent = { bg = c.fg_gutter },
  }
end

return M
