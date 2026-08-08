---@class github_theme.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias github_theme.Highlights table<string,github_theme.Highlight|string>

---@alias github_theme.HighlightsFn fun(colors: ColorScheme, opts:github_theme.Config):github_theme.Highlights

---@class github_theme.Cache
---@field groups github_theme.Highlights
---@field inputs table
