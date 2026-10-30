local Colors = require("gti_theme.colors")
local Config = require("gti_theme.config")
local Groups = require("gti_theme.groups")
local Theme = require("gti_theme.theme")

local expected = {
  ["@lsp.type.keyword.gti"] = "@none",
  ["@lsp.type.macro.gti"] = "@keyword.directive",
  ["@lsp.type.typeParameter.gti"] = "@lsp.type.typeParameter",
  ["@lsp.type.class.gti"] = "@lsp.type.class",
  ["@lsp.typemod.class.declaration.gti"] = "@lsp.type.class",
  ["@lsp.typemod.namespace.defaultLibrary.gti"] = "@module",
  ["@lsp.typemod.function.defaultLibrary.gti"] = "@function",
  ["@lsp.typemod.variable.readonly.gti"] = "@variable",
  ["@lsp.typemod.parameter.readonly.gti"] = "@variable.parameter",
}

local function options()
  return Config.extend({
    cache = false,
    plugins = { all = false, auto = false },
  })
end

before_each(function()
  Config.setup()
end)

it("contains only the required GTI links", function()
  local opts = options()
  local colors = Colors.setup(opts)
  local highlights = Groups.get("gti", colors, opts)

  assert.same(vim.tbl_count(expected), vim.tbl_count(highlights))
  for source, target in pairs(expected) do
    assert.same({ link = target }, highlights[source])
    assert.is_truthy(source:match("%.gti$"))
  end
end)

it("resolves every GTI override to its C++ visual target", function()
  Theme.setup(options())

  for source, target in pairs(expected) do
    local source_highlight = vim.api.nvim_get_hl(0, { name = source, link = false })
    local target_highlight = vim.api.nvim_get_hl(0, { name = target, link = false })
    assert.same(target_highlight, source_highlight)
  end
end)
