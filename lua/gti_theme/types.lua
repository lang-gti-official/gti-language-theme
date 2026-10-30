---@class gti_theme.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias gti_theme.Highlights table<string,gti_theme.Highlight|string>

---@alias gti_theme.HighlightsFn fun(colors: ColorScheme, opts:gti_theme.Config):gti_theme.Highlights

---@class gti_theme.Cache
---@field groups gti_theme.Highlights
---@field inputs table
