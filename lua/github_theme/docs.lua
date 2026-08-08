local Groups = require("github_theme.groups")
local Util = require("github_theme.util")

local M = {}

local function link(name, url)
  return "[" .. name .. "](" .. url .. ")"
end

local function row(values)
  return "| " .. table.concat(values, " | ") .. " |"
end

---@param values string[][]
local function markdown_table(values)
  local lines = { row(table.remove(values, 1)), row({ "---", "---" }) }
  for _, values_row in ipairs(values) do
    lines[#lines + 1] = row(values_row)
  end
  return table.concat(lines, "\n")
end

local function replace_section(contents, name, replacement)
  local open = "<!-- " .. name .. ":start -->"
  local close = "<!-- " .. name .. ":end -->"
  local open_start, open_end = contents:find(open, 1, true)
  assert(open_start and open_end, "missing " .. open)
  local close_start, close_end = contents:find(close, open_end + 1, true)
  assert(close_start and close_end, "missing " .. close)
  return contents:sub(1, open_start - 1)
    .. open
    .. "\n"
    .. replacement
    .. "\n"
    .. close
    .. contents:sub(close_end + 1)
end

function M.config()
  local source = Util.read("lua/github_theme/config.lua")
  local first = assert(source:find("---@class github_theme.Config", 1, true))
  local last = assert(source:find("\n---@type github_theme.Config", first, true))
  return "```lua\n" .. source:sub(first, last - 1) .. "\n```"
end

function M.extras()
  local Extra = require("github_theme.extra")
  local names = vim.tbl_keys(Extra.extras) ---@type string[]
  table.sort(names)
  local values = { { "Tool", "GitHub export" } }
  for _, name in ipairs(names) do
    local info = Extra.extras[name]
    values[#values + 1] = {
      link(info.label, info.url),
      link("`" .. Extra.path(name) .. "`", "extras/" .. Extra.path(name)),
    }
  end
  return markdown_table(values)
end

function M.plugins()
  local unique = {}
  for _, name in pairs(Groups.plugins) do
    unique[name] = true
  end
  local names = vim.tbl_keys(unique) ---@type string[]
  table.sort(names)
  local values = { { "Plugin", "Highlight source" } }
  for _, name in ipairs(names) do
    local group = Groups.get_group(name)
    values[#values + 1] = {
      link(group.url:match("[^/]*$"), group.url),
      link("`" .. name .. "`", "lua/github_theme/groups/" .. name .. ".lua"),
    }
  end
  return markdown_table(values)
end

function M.update()
  local readme = Util.read("README.md")
  readme = replace_section(readme, "config", M.config())
  readme = replace_section(readme, "plugins", M.plugins())
  readme = replace_section(readme, "extras", M.extras())
  Util.write("README.md", readme)
  print("Documentation updated")
end

return M
