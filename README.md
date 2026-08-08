# github_theme.nvim

A single dark GitHub-inspired colorscheme for Neovim. This repository has one
palette, one public colorscheme, and one Lua module:

- Lua API: `require("github_theme")`
- Colorscheme: `github`
- Palette: [`lua/github_theme/palette.lua`](lua/github_theme/palette.lua)

The existing C++, TypeScript, and JavaScript presentation is the visual
baseline. GTI-specific semantic-token links adapt GTI's accurate language
semantics to that same presentation without changing shared Tree-sitter, LSP,
or palette definitions.

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "LukeHHA/github_theme.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("github_theme").setup(opts)
    vim.cmd.colorscheme("github")
  end,
}
```

Without a plugin manager, add the repository to `runtimepath`, then run:

```lua
require("github_theme").setup()
vim.cmd.colorscheme("github")
```

The theme is intentionally dark-only and sets `background=dark` when loaded.

## Configuration

Call `setup()` before loading the colorscheme. All options are optional.

<!-- config:start -->
```lua
---@class github_theme.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: github_theme.Highlights, colors: ColorScheme)
M.defaults = {
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights github_theme.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  cache = true, -- When set to true, the theme will be cached for better performance

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = true,
    -- add any plugins here that you want to enable
    -- for all possible plugins, see:
    --   * https://github.com/LukeHHA/github_theme.nvim/tree/main/lua/github_theme/groups
    -- telescope = true,
  },
}

```
<!-- config:end -->

Common customizations:

```lua
require("github_theme").setup({
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  on_colors = function(colors)
    -- Change palette values before highlights are built.
  end,
  on_highlights = function(highlights, colors)
    -- Add or override final Neovim highlight definitions.
  end,
})
```

## GTI highlighting

GTI overrides live only in
[`lua/github_theme/groups/gti.lua`](lua/github_theme/groups/gti.lua). They cover
the high-priority semantic combinations that otherwise override the equivalent
C++ appearance, including readonly parameters and locals, type parameters,
class declarations, default-library namespaces/functions, macros, and broad
keyword tokens.

For example:

```lua
["@lsp.typemod.parameter.readonly.gti"] = {
  link = "@variable.parameter",
}
```

GTI parameter references currently emitted as ordinary `variable` tokens remain
ordinary variables; the theme does not reinterpret language-server semantics.

## Included plugin highlights

Core Neovim, Tree-sitter, semantic-token, and GTI groups are always enabled.
Plugin groups can be detected through lazy.nvim, enabled together with
`plugins.all = true`, or selected individually.

<!-- plugins:start -->
| Plugin | Highlight source |
| --- | --- |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim) | [`aerial`](lua/github_theme/groups/aerial.lua) |
| [ale](https://github.com/dense-analysis/ale) | [`ale`](lua/github_theme/groups/ale.lua) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | [`alpha`](lua/github_theme/groups/alpha.lua) |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim) | [`barbar`](lua/github_theme/groups/barbar.lua) |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | [`blink`](lua/github_theme/groups/blink.lua) |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | [`bufferline`](lua/github_theme/groups/bufferline.lua) |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | [`cmp`](lua/github_theme/groups/cmp.lua) |
| [codeium.nvim](https://github.com/Exafunction/codeium.nvim) | [`codeium`](lua/github_theme/groups/codeium.lua) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | [`copilot`](lua/github_theme/groups/copilot.lua) |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | [`dap`](lua/github_theme/groups/dap.lua) |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | [`dashboard`](lua/github_theme/groups/dashboard.lua) |
| [flash.nvim](https://github.com/folke/flash.nvim) | [`flash`](lua/github_theme/groups/flash.lua) |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | [`fzf`](lua/github_theme/groups/fzf.lua) |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | [`gitgutter`](lua/github_theme/groups/gitgutter.lua) |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | [`gitsigns`](lua/github_theme/groups/gitsigns.lua) |
| [glyph-palette.vim](https://github.com/lambdalisue/glyph-palette.vim) | [`glyph-palette`](lua/github_theme/groups/glyph-palette.lua) |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | [`grug-far`](lua/github_theme/groups/grug-far.lua) |
| [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim) | [`headlines`](lua/github_theme/groups/headlines.lua) |
| [hop.nvim](https://github.com/phaazon/hop.nvim) | [`hop`](lua/github_theme/groups/hop.lua) |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | [`illuminate`](lua/github_theme/groups/illuminate.lua) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | [`indent-blankline`](lua/github_theme/groups/indent-blankline.lua) |
| [indentmini.nvim](https://github.com/nvimdev/indentmini.nvim) | [`indentmini`](lua/github_theme/groups/indentmini.lua) |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | [`lazy`](lua/github_theme/groups/lazy.lua) |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | [`leap`](lua/github_theme/groups/leap.lua) |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) | [`lspsaga`](lua/github_theme/groups/lspsaga.lua) |
| [mini.animate](https://github.com/echasnovski/mini.animate) | [`mini_animate`](lua/github_theme/groups/mini_animate.lua) |
| [mini.clue](https://github.com/echasnovski/mini.clue) | [`mini_clue`](lua/github_theme/groups/mini_clue.lua) |
| [mini.completion](https://github.com/echasnovski/mini.completion) | [`mini_completion`](lua/github_theme/groups/mini_completion.lua) |
| [mini.cursorword](https://github.com/echasnovski/mini.cursorword) | [`mini_cursorword`](lua/github_theme/groups/mini_cursorword.lua) |
| [mini.deps](https://github.com/echasnovski/mini.deps) | [`mini_deps`](lua/github_theme/groups/mini_deps.lua) |
| [mini.diff](https://github.com/echasnovski/mini.diff) | [`mini_diff`](lua/github_theme/groups/mini_diff.lua) |
| [mini.files](https://github.com/echasnovski/mini.files) | [`mini_files`](lua/github_theme/groups/mini_files.lua) |
| [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) | [`mini_hipatterns`](lua/github_theme/groups/mini_hipatterns.lua) |
| [mini.icons](https://github.com/echasnovski/mini.icons) | [`mini_icons`](lua/github_theme/groups/mini_icons.lua) |
| [mini.indentscope](https://github.com/echasnovski/mini.indentscope) | [`mini_indentscope`](lua/github_theme/groups/mini_indentscope.lua) |
| [mini.jump](https://github.com/echasnovski/mini.jump) | [`mini_jump`](lua/github_theme/groups/mini_jump.lua) |
| [mini.map](https://github.com/echasnovski/mini.map) | [`mini_map`](lua/github_theme/groups/mini_map.lua) |
| [mini.notify](https://github.com/echasnovski/mini.notify) | [`mini_notify`](lua/github_theme/groups/mini_notify.lua) |
| [mini.operators](https://github.com/echasnovski/mini.operators) | [`mini_operators`](lua/github_theme/groups/mini_operators.lua) |
| [mini.pick](https://github.com/echasnovski/mini.pick) | [`mini_pick`](lua/github_theme/groups/mini_pick.lua) |
| [mini.starter](https://github.com/echasnovski/mini.starter) | [`mini_starter`](lua/github_theme/groups/mini_starter.lua) |
| [mini.statusline](https://github.com/echasnovski/mini.statusline) | [`mini_statusline`](lua/github_theme/groups/mini_statusline.lua) |
| [mini.surround](https://github.com/echasnovski/mini.surround) | [`mini_surround`](lua/github_theme/groups/mini_surround.lua) |
| [mini.tabline](https://github.com/echasnovski/mini.tabline) | [`mini_tabline`](lua/github_theme/groups/mini_tabline.lua) |
| [mini.test](https://github.com/echasnovski/mini.test) | [`mini_test`](lua/github_theme/groups/mini_test.lua) |
| [mini.trailspace](https://github.com/echasnovski/mini.trailspace) | [`mini_trailspace`](lua/github_theme/groups/mini_trailspace.lua) |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | [`navic`](lua/github_theme/groups/navic.lua) |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | [`neo-tree`](lua/github_theme/groups/neo-tree.lua) |
| [neogit](https://github.com/TimUntersberger/neogit) | [`neogit`](lua/github_theme/groups/neogit.lua) |
| [neotest](https://github.com/nvim-neotest/neotest) | [`neotest`](lua/github_theme/groups/neotest.lua) |
| [noice.nvim](https://github.com/folke/noice.nvim) | [`noice`](lua/github_theme/groups/noice.lua) |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | [`notify`](lua/github_theme/groups/notify.lua) |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | [`nvim-tree`](lua/github_theme/groups/nvim-tree.lua) |
| [octo.nvim](https://github.com/pwntester/octo.nvim) | [`octo`](lua/github_theme/groups/octo.lua) |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | [`rainbow`](lua/github_theme/groups/rainbow.lua) |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | [`render-markdown`](lua/github_theme/groups/render-markdown.lua) |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) | [`scrollbar`](lua/github_theme/groups/scrollbar.lua) |
| [sidekick.nvim](https://github.com/folke/sidekick.nvim) | [`sidekick`](lua/github_theme/groups/sidekick.lua) |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | [`snacks`](lua/github_theme/groups/snacks.lua) |
| [vim-sneak](https://github.com/justinmk/vim-sneak) | [`sneak`](lua/github_theme/groups/sneak.lua) |
| [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim) | [`supermaven`](lua/github_theme/groups/supermaven.lua) |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | [`telescope`](lua/github_theme/groups/telescope.lua) |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | [`treesitter-context`](lua/github_theme/groups/treesitter-context.lua) |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | [`trouble`](lua/github_theme/groups/trouble.lua) |
| [vimwiki](https://github.com/vimwiki/vimwiki) | [`vimwiki`](lua/github_theme/groups/vimwiki.lua) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | [`which-key`](lua/github_theme/groups/which-key.lua) |
| [yanky.nvim](https://github.com/gbprod/yanky.nvim) | [`yanky`](lua/github_theme/groups/yanky.lua) |
<!-- plugins:end -->

## Statusline and winbar integrations

```lua
require("lualine").setup({ options = { theme = "github" } })
vim.g.lightline = { colorscheme = "github" }
require("barbecue").setup({ theme = "github" })
```

## Other-tool exports

The exporter sources under `lua/github_theme/extra/` produce exactly one
GitHub-palette artifact per supported tool.

<!-- extras:start -->
| Tool | GitHub export |
| --- | --- |
| [Aerc](https://git.sr.ht/~rjarry/aerc/) | [`aerc/github.ini`](extras/aerc/github.ini) |
| [Aider](https://aider.chat) | [`aider/github.yml`](extras/aider/github.yml) |
| [Alacritty](https://github.com/alacritty/alacritty) | [`alacritty/github.toml`](extras/alacritty/github.toml) |
| [Btop++](https://github.com/aristocratos/btop) | [`btop/github.theme`](extras/btop/github.theme) |
| [Delta](https://github.com/dandavison/delta) | [`delta/github.gitconfig`](extras/delta/github.gitconfig) |
| [(Better-)Discord](https://betterdiscord.app/) | [`discord/github.css`](extras/discord/github.css) |
| [Dunst](https://dunst-project.org/) | [`dunst/github.dunstrc`](extras/dunst/github.dunstrc) |
| [eza](https://eza.rocks) | [`eza/github.yml`](extras/eza/github.yml) |
| [Fish](https://fishshell.com/docs/current/index.html) | [`fish/github.fish`](extras/fish/github.fish) |
| [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) | [`fish_themes/github.theme`](extras/fish_themes/github.theme) |
| [Foot](https://codeberg.org/dnkl/foot) | [`foot/github.ini`](extras/foot/github.ini) |
| [Fuzzel](https://codeberg.org/dnkl/fuzzel) | [`fuzzel/github.ini`](extras/fuzzel/github.ini) |
| [Fzf](https://github.com/junegunn/fzf) | [`fzf/github.sh`](extras/fzf/github.sh) |
| [Ghostty](https://github.com/ghostty-org/ghostty) | [`ghostty/github`](extras/ghostty/github) |
| [GitUI](https://github.com/extrawurst/gitui) | [`gitui/github.ron`](extras/gitui/github.ron) |
| [GNOME Terminal](https://gitlab.gnome.org/GNOME/gnome-terminal) | [`gnome_terminal/github.dconf`](extras/gnome_terminal/github.dconf) |
| [Helix](https://helix-editor.com/) | [`helix/github.toml`](extras/helix/github.toml) |
| [iSH ](https://ish.app) | [`ish/github.json`](extras/ish/github.json) |
| [iTerm](https://iterm2.com/) | [`iterm/github.itermcolors`](extras/iterm/github.itermcolors) |
| [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) | [`kitty/github.conf`](extras/kitty/github.conf) |
| [Konsole](https://konsole.kde.org/) | [`konsole/github.colorscheme`](extras/konsole/github.colorscheme) |
| [Lazygit](https://github.com/jesseduffield/lazygit) | [`lazygit/github.yml`](extras/lazygit/github.yml) |
| [Lua Table for testing](https://www.lua.org) | [`lua/github.lua`](extras/lua/github.lua) |
| [opencode](https://github.com/sst/opencode) | [`opencode/github.json`](extras/opencode/github.json) |
| [Prism](https://prismjs.com) | [`prism/github.js`](extras/prism/github.js) |
| [process-compose](https://f1bonacc1.github.io/process-compose/) | [`process_compose/github.yaml`](extras/process_compose/github.yaml) |
| [QTerminal](https://github.com/lxqt/qterminal) | [`qterminal/github.colorscheme`](extras/qterminal/github.colorscheme) |
| [Slack](https://slack.com) | [`slack/github.txt`](extras/slack/github.txt) |
| [Spotify Player](https://github.com/aome510/spotify-player) | [`spotify_player/github.toml`](extras/spotify_player/github.toml) |
| [Tailwind CSS (v4)](https://tailwindcss.com) | [`tailwindv4/github.css`](extras/tailwindv4/github.css) |
| [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) | [`terminator/github.conf`](extras/terminator/github.conf) |
| [Termux](https://termux.dev/) | [`termux/github.properties`](extras/termux/github.properties) |
| [Tilix](https://github.com/gnunn1/tilix) | [`tilix/github.json`](extras/tilix/github.json) |
| [Tmux](https://github.com/tmux/tmux/wiki) | [`tmux/github.tmux`](extras/tmux/github.tmux) |
| [Vim](https://vimhelp.org/) | [`vim/colors/github.vim`](extras/vim/colors/github.vim) |
| [Vimium](https://vimium.github.io/) | [`vimium/github.css`](extras/vimium/github.css) |
| [Vivaldi](https://vivaldi.com) | [`vivaldi/github.json`](extras/vivaldi/github.json) |
| [WezTerm](https://wezfurlong.org/wezterm/config/files.html) | [`wezterm/github.toml`](extras/wezterm/github.toml) |
| [Windows Terminal](https://aka.ms/terminal-documentation) | [`windows_terminal/github.json`](extras/windows_terminal/github.json) |
| [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) | [`xfceterm/github.theme`](extras/xfceterm/github.theme) |
| [Xresources](https://wiki.archlinux.org/title/X_resources) | [`xresources/github.Xresources`](extras/xresources/github.Xresources) |
| [Yazi](https://github.com/sxyazi/yazi) | [`yazi/github.toml`](extras/yazi/github.toml) |
| [Zathura](https://pwmt.org/projects/zathura/) | [`zathura/github.zathurarc`](extras/zathura/github.zathurarc) |
| [Zellij](https://zellij.dev/) | [`zellij/github.kdl`](extras/zellij/github.kdl) |
<!-- extras:end -->

Regenerate them with:

```sh
./scripts/build
```

## Repository layout

- `colors/github.lua`: Neovim colorscheme entrypoint.
- `lua/github_theme/palette.lua`: literal GitHub palette.
- `lua/github_theme/colors.lua`: derived colors and terminal palette.
- `lua/github_theme/groups/`: core and plugin highlight definitions.
- `lua/github_theme/groups/gti.lua`: presentation-only GTI adaptations.
- `lua/github_theme/extra/`: exporters for other tools.
- `tests/`: runtime, integration, group, export, and GTI checks.

## Development

```sh
./scripts/test
./scripts/build
./scripts/docs
```

The shared architecture is derived from the upstream project credited in
[`LICENSE`](LICENSE). The GitHub palette and language-specific presentation in
this repository are maintained as one standalone theme.
