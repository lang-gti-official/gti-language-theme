local Util = require("gti_theme.util")

it("uses one readable and clearable cache file", function()
  local path = vim.fn.tempname()
  local original_file = Util.cache.file
  Util.cache.file = function()
    return path
  end

  local ok, err = xpcall(function()
    local value = { inputs = { version = "test" }, groups = { Normal = { fg = "#ffffff" } } }
    Util.cache.write(value)
    assert.same(value, Util.cache.read())

    vim.fn.writefile({ "not json" }, path)
    assert.is_nil(Util.cache.read())

    Util.cache.write(value)
    Util.cache.clear()
    assert.is_nil(vim.uv.fs_stat(path))
  end, debug.traceback)

  Util.cache.file = original_file
  vim.fn.delete(path)
  if not ok then
    error(err)
  end
end)
