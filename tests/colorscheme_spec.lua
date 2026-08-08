local Config = require("github_theme.config")

local function minimal_config(overrides)
  return vim.tbl_deep_extend("force", {
    cache = false,
    plugins = { all = false, auto = false },
  }, overrides or {})
end

before_each(function()
  vim.cmd.colorscheme("default")
  vim.o.background = "dark"
  Config.setup(minimal_config())
end)

it("exposes one GitHub theme", function()
  assert.is_table(require("github_theme"))
  assert.is_nil(Config.defaults.style)
  assert.is_nil(Config.defaults["light_" .. "style"])
  assert.is_nil(Config.defaults["day_" .. "brightness"])
  assert.same({ "github.lua" }, vim.fn.readdir("colors"))
end)

it("loads the GitHub palette from either background", function()
  vim.o.background = "light"
  vim.cmd.colorscheme("github")

  assert.same("dark", vim.o.background)
  assert.same("github", vim.g.colors_name)
  assert.is_true(vim.o.termguicolors)

  local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
  assert.same(tonumber("e6edf3", 16), normal.fg)
  assert.same(tonumber("24292e", 16), normal.bg)
end)

it("keeps color and highlight overrides", function()
  local saw_colors = false
  local saw_highlights = false
  Config.setup(minimal_config({
    on_colors = function(colors)
      saw_colors = true
      colors.blue = "#123456"
    end,
    on_highlights = function(highlights, colors)
      saw_highlights = true
      highlights.GitHubThemeTest = { fg = colors.blue }
    end,
  }))

  vim.cmd.colorscheme("github")

  assert.is_true(saw_colors)
  assert.is_true(saw_highlights)
  local custom = vim.api.nvim_get_hl(0, { name = "GitHubThemeTest", link = false })
  assert.same(tonumber("123456", 16), custom.fg)
end)
