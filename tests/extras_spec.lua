local Extra = require("github_theme.extra")
local Util = require("github_theme.util")

it("contains one GitHub artifact for every supported exporter", function()
  require("github_theme.config").setup()
  local colors, groups, opts = require("github_theme.theme").setup({
    cache = false,
    plugins = { all = true, auto = false },
  })
  local paths = {}
  for name in pairs(Extra.extras) do
    local path = Extra.path(name)
    assert.is_nil(paths[path], path)
    paths[path] = true

    local full_path = "extras/" .. path
    assert.is_not_nil(vim.uv.fs_stat(full_path), full_path)
    local contents = Util.read(full_path)
    assert.is_true(#contents > 0, full_path)
    assert.same(Extra.render(name, colors, groups, opts), contents, full_path)
    assert.is_nil(contents:find("${", 1, true), full_path)
    assert.is_nil(contents:lower():find("tokyo" .. "night", 1, true), full_path)
  end

  local generated = vim.fs.find(function(name)
    return name ~= ".DS_Store"
  end, { path = "extras", type = "file", limit = math.huge })
  assert.same(vim.tbl_count(Extra.extras), #generated)
end)
