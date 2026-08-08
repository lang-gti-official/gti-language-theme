local M = {}

---@type github_theme.HighlightsFn
function M.get()
  return {
    -- GTI reports syntax-level roles such as true, nullptr, and self as
    -- keywords. Let its more precise Tree-sitter captures supply their colors.
    ["@lsp.type.keyword.gti"] = { link = "@none" },

    -- GTI macros are target-selection directives, matching C++ directives.
    ["@lsp.type.macro.gti"] = { link = "@keyword.directive" },

    -- Match the effective C++ semantic-token groups instead of GTI's default
    -- editor links, which otherwise override the matching Tree-sitter colors.
    ["@lsp.type.typeParameter.gti"] = { link = "@lsp.type.typeParameter" },
    ["@lsp.type.class.gti"] = { link = "@lsp.type.class" },
    ["@lsp.typemod.class.declaration.gti"] = { link = "@lsp.type.class" },
    ["@lsp.typemod.namespace.defaultLibrary.gti"] = { link = "@module" },
    ["@lsp.typemod.function.defaultLibrary.gti"] = { link = "@function" },
    ["@lsp.typemod.variable.readonly.gti"] = { link = "@variable" },
    ["@lsp.typemod.parameter.readonly.gti"] = { link = "@variable.parameter" },
  }
end

return M
