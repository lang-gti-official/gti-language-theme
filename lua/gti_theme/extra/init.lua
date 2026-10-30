local Util = require("gti_theme.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string}>
-- stylua: ignore
M.extras = {
  aerc             = { ext = "ini", url = "https://git.sr.ht/~rjarry/aerc/", label = "Aerc" },
  aider            = { ext = "yml", url = "https://aider.chat", label = "Aider" },
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  btop             = { ext = "theme", url = "https://github.com/aristocratos/btop", label = "Btop++" },
  delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  discord          = { ext = "css", url ="https://betterdiscord.app/", label = "(Better-)Discord"},
  dunst            = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
  eza              = { ext = "yml", url = "https://eza.rocks", label = "eza" },
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  fuzzel           = { ext = "ini", url = "https://codeberg.org/dnkl/fuzzel", label = "Fuzzel" },
  fzf              = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  gitui            = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
  gnome_terminal   = { ext = "dconf", url = "https://gitlab.gnome.org/GNOME/gnome-terminal", label = "GNOME Terminal" },
  helix            = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  iterm            = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
  ish              = { ext = "json", url = "https://ish.app", label = "iSH "},
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  konsole          = { ext = "colorscheme", url = "https://konsole.kde.org/", label = "Konsole" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  opencode         = { ext = "json", url = "https://github.com/sst/opencode", label = "opencode" },
  prism            = { ext = "js", url = "https://prismjs.com", label = "Prism" },
  process_compose  = { ext = "yaml", url = "https://f1bonacc1.github.io/process-compose/", label = "process-compose" },
  qterminal        = { ext = "colorscheme", url = "https://github.com/lxqt/qterminal", label = "QTerminal" },
  slack            = { ext = "txt", url = "https://slack.com", label = "Slack" },
  spotify_player   = { ext = "toml", url = "https://github.com/aome510/spotify-player", label = "Spotify Player" },
  tailwindv4       = { ext = "css", url = "https://tailwindcss.com", label = "Tailwind CSS (v4)" },
  terminator       = { ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator" },
  termux           = { ext = "properties", url = "https://termux.dev/", label = "Termux" },
  tilix            = { ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
  tmux             = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  windows_terminal = { ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal" },
  xfceterm         = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
  xresources       = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
  yazi             = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
  vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors" },
  vimium           = { ext = "css", url = "https://vimium.github.io/", label = "Vimium" },
  vivaldi          = { ext = "json", url = "https://vivaldi.com", label = "Vivaldi" },
  zathura          = { ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura" },
  zellij           = { ext = "kdl", url = "https://zellij.dev/", label = "Zellij" },
}

---@param extra string
---@return string
function M.path(extra)
  local info = assert(M.extras[extra], "unknown extra: " .. extra)
  local parts = { extra }
  if info.subdir then
    parts[#parts + 1] = info.subdir
  end
  parts[#parts + 1] = "gti." .. info.ext
  local fname = table.concat(parts, "/")
  return (fname:gsub("%.$", ""))
end

---@param extra string
---@param colors ColorScheme
---@param groups gti_theme.Highlights
---@param opts gti_theme.Config
---@return string
function M.render(extra, colors, groups, opts)
  local fname = M.path(extra)
  local export_colors = vim.deepcopy(colors)
  export_colors._upstream_url = "https://github.com/lang-gti-official/gti-language-theme/raw/main/extras/" .. fname
  export_colors._style_name = "GTI"
  export_colors._name = "gti"
  export_colors._style = "gti"
  return require("gti_theme.extra." .. extra).generate(
    export_colors,
    vim.deepcopy(groups),
    vim.deepcopy(opts)
  )
end

function M.setup()
  local Theme = require("gti_theme.theme")
  local colors, groups, opts = Theme.setup({
    cache = false,
    plugins = { all = true, auto = false },
  })

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  for _, extra in ipairs(names) do
    local fname = M.path(extra)
    print("[write] " .. fname)
    Util.write("extras/" .. fname, M.render(extra, colors, groups, opts))
  end
end

return M
