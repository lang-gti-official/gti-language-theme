local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type github_theme.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- rainbow-delimiters
    RainbowDelimiterRed    = { fg = c.blue },
    RainbowDelimiterOrange = { fg = c.yellow },
    RainbowDelimiterYellow = { fg = c.purple },
    RainbowDelimiterGreen  = { fg = c.blue },
    RainbowDelimiterBlue   = { fg = c.yellow },
    RainbowDelimiterViolet = { fg = c.purple },
    RainbowDelimiterCyan   = { fg = c.blue },
  }
end

return M
