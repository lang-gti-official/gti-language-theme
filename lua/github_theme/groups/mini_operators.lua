local M = {}

M.url = "https://github.com/echasnovski/mini.operators"

---@type github_theme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniOperatorsExchangeFrom = "IncSearch",
  }
end

return M
