local Util = require("github_theme.util")

local M = {}

---@type github_theme.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    -- ["@lsp.type.boolean"]                      = "@boolean",
    -- ["@lsp.type.builtinType"]                  = {fg = c.red},
    ["@lsp.type.bracket"]                  = {fg = c.red},
    -- ["@lsp.type.comment"]                      = "@comment",
    ["@lsp.type.class"]                           = { fg = c.purple},
    -- ["@lsp.type.decorator"]                    = "@attribute",
    -- ["@lsp.type.deriveHelper"]                 = "@attribute",
    ["@lsp.type.enum"]                         = {fg = c.purple},
    ["@lsp.type.enumMember"]                   = {fg = c.blue5},
    -- ["@lsp.type.escapeSequence"]               = "@string.escape",
    -- ["@lsp.type.formatSpecifier"]              = "@markup.list",
    -- ["@lsp.type.generic"]                      = "@variable",
    -- ["@lsp.type.interface"]                    = { fg = Util.blend_fg(c.blue1, 0.7) },
    -- ["@lsp.type.keyword"]                      = "@keyword",
    -- ["@lsp.type.lifetime"]                     = "@keyword.storage",
    ["@lsp.type.macro"]                     = {fg = c.purple},
    -- ["@lsp.type.namespace"]                    = "@module",
    -- ["@lsp.type.namespace.python"]             = "@variable",
    -- ["@lsp.type.number"]                       = "@number",
    -- ["@lsp.type.operator"]                     = "@operator",
    ["@lsp.type.parameter"]                    = {fg = c.yellow},
    -- ["@lsp.type.property"]                     = {fg = c.fg},
    -- ["@lsp.type.selfKeyword"]                  = "@variable.builtin",
    -- ["@lsp.type.selfTypeKeyword"]              = "@variable.builtin",
    -- ["@lsp.type.string"]                       = "@string",
    -- ["@lsp.type.typeAlias"]                    = "@type.definition",
    ["@lsp.type.typeParameter"]                    = {fg = c.purple},
    -- ["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = c.error },
    -- ["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
    ["@lsp.mod.deduced"]                     = {fg = c.red}, -- use treesitter styles for regular variables
    -- ["@lsp.typemod.class.defaultLibrary"]      = {fg = c.purple},
    -- ["@lsp.typemod.enum.defaultLibrary"]       = "@type.builtin",
    -- ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
    -- ["@lsp.typemod.function.defaultLibrary"]   = {fg = c.purple},
    -- ["@lsp.typemod.keyword.async"]             = "@keyword.coroutine",
    -- ["@lsp.typemod.keyword.injected"]          = "@keyword",
    -- ["@lsp.typemod.macro.defaultLibrary"]      = "@function.builtin",
    -- ["@lsp.typemod.method.defaultLibrary"]     = "@function.builtin",
    -- ["@lsp.typemod.operator.injected"]         = "@operator",
    -- ["@lsp.typemod.string.injected"]           = "@string",
    -- ["@lsp.typemod.struct.defaultLibrary"]     = "@type.builtin",
    -- ["@lsp.typemod.type.defaultLibrary"]       = { fg = Util.blend_bg(c.blue1, 0.8) },
    -- ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = Util.blend_bg(c.blue1, 0.8) },
    -- ["@lsp.typemod.variable.callable"]         = "@function",
    -- ["@lsp.typemod.variable.defaultLibrary"]   = "@variable.builtin",
    -- ["@lsp.typemod.variable.injected"]         = "@variable",
    -- ["@lsp.typemod.variable.static"]           = "@constant",

  }
end

return M
