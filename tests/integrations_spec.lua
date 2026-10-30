local Config = require("gti_theme.config")

before_each(function()
  Config.setup({ cache = false })
end)

it("provides GTI-only statusline and winbar integrations", function()
  assert.is_table(require("lualine.themes.gti"))
  assert.is_table(require("lightline.colorscheme.gti"))
  assert.is_table(require("barbecue.theme.gti"))

  assert.same({ "_gti_theme.lua", "gti.lua" }, vim.fn.readdir("lua/lualine/themes"))
  assert.same({ "gti.lua" }, vim.fn.readdir("lua/lightline/colorscheme"))
  assert.same({ "gti.lua" }, vim.fn.readdir("lua/barbecue/theme"))
end)

it("uses the public GTI selector in the Lightline bridge", function()
  local bridge = table.concat(vim.fn.readfile("autoload/lightline/colorscheme/gti.vim"), "\n")
  assert.is_truthy(bridge:find("lightline.colorscheme.gti", 1, true))
  assert.is_truthy(bridge:find("lightline#colorscheme#gti#palette", 1, true))
end)

it("retains the lualine bold option", function()
  Config.setup({ cache = false, lualine_bold = true })
  package.loaded["lualine.themes.gti"] = nil
  package.loaded["lualine.themes._gti_theme"] = nil
  local theme = require("lualine.themes.gti")
  assert.same("bold", theme.normal.a.gui)
end)
