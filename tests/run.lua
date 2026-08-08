local builtin_assert = _G.assert

local Assert = {}
setmetatable(Assert, {
  __call = function(_, value, message)
    return builtin_assert(value, message)
  end,
})

local function failure(message, level)
  error(message, (level or 1) + 1)
end

function Assert.same(expected, actual, message)
  if not vim.deep_equal(expected, actual) then
    failure(
      (message and (message .. "\n") or "")
        .. "expected: "
        .. vim.inspect(expected)
        .. "\nactual: "
        .. vim.inspect(actual),
      2
    )
  end
end

function Assert.is_nil(value, message)
  if value ~= nil then
    failure(message or ("expected nil, got " .. vim.inspect(value)), 2)
  end
end

function Assert.is_not_nil(value, message)
  if value == nil then
    failure(message or "expected a non-nil value", 2)
  end
end

function Assert.is_true(value, message)
  if value ~= true then
    failure(message or ("expected true, got " .. vim.inspect(value)), 2)
  end
end

function Assert.is_truthy(value, message)
  if not value then
    failure(message or ("expected a truthy value, got " .. vim.inspect(value)), 2)
  end
end

function Assert.is_table(value, message)
  if type(value) ~= "table" then
    failure(message or ("expected table, got " .. type(value)), 2)
  end
end

_G.assert = Assert

local total = 0
local failed = 0
local hooks = {}
local context = {}

function _G.before_each(callback)
  hooks[#hooks + 1] = callback
end

function _G.describe(name, callback)
  context[#context + 1] = name
  callback()
  context[#context] = nil
end

function _G.it(name, callback)
  total = total + 1
  local names = vim.deepcopy(context)
  names[#names + 1] = name
  local full_name = table.concat(names, " > ")
  local ok, err = xpcall(function()
    for _, hook in ipairs(hooks) do
      hook()
    end
    callback()
  end, debug.traceback)

  if not ok then
    failed = failed + 1
    print("FAIL " .. full_name .. "\n" .. err)
  end
end

local specs = {}
for name in vim.fs.dir("tests") do
  if name:match("_spec%.lua$") then
    specs[#specs + 1] = name
  end
end
table.sort(specs)

for _, name in ipairs(specs) do
  hooks = {}
  context = { name }
  local ok, err = xpcall(function()
    dofile("tests/" .. name)
  end, debug.traceback)
  if not ok then
    failed = failed + 1
    print("FAIL " .. name .. " (load)\n" .. err)
  end
end

print(("Tests: %d passed, %d failed"):format(total - failed, failed))
if failed > 0 then
  vim.cmd("cquit " .. failed)
else
  vim.cmd.quitall()
end
