local Config = require("github_theme.config")

before_each(function()
  Config.setup({ cache = false })
end)

it("provides GitHub-only statusline and winbar integrations", function()
  assert.is_table(require("lualine.themes.github"))
  assert.is_table(require("lightline.colorscheme.github"))
  assert.is_table(require("barbecue.theme.github"))

  assert.same({ "_github_theme.lua", "github.lua" }, vim.fn.readdir("lua/lualine/themes"))
  assert.same({ "github.lua" }, vim.fn.readdir("lua/lightline/colorscheme"))
  assert.same({ "github.lua" }, vim.fn.readdir("lua/barbecue/theme"))
end)

it("uses the public GitHub selector in the Lightline bridge", function()
  local bridge = table.concat(vim.fn.readfile("autoload/lightline/colorscheme/github.vim"), "\n")
  assert.is_truthy(bridge:find("lightline.colorscheme.github", 1, true))
  assert.is_truthy(bridge:find("lightline#colorscheme#github#palette", 1, true))
end)

it("retains the lualine bold option", function()
  Config.setup({ cache = false, lualine_bold = true })
  package.loaded["lualine.themes.github"] = nil
  package.loaded["lualine.themes._github_theme"] = nil
  local theme = require("lualine.themes.github")
  assert.same("bold", theme.normal.a.gui)
end)
