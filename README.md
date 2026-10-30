# GTI Theme

The official dark theme for the GTI language, maintained by the GTI language
organization. It provides a Neovim colorscheme and matching exports for other
tools. There is one palette, one public colorscheme, and one Lua module:

- Lua API: `require("gti_theme")`
- Colorscheme: `gti`
- Palette: [`lua/gti_theme/palette.lua`](lua/gti_theme/palette.lua)

The palette is designed around GTI source code. GTI semantic-token links keep
parameters, type names, namespaces, macros, and keywords consistent with the
shared Tree-sitter and LSP highlights. The same palette also covers C++,
TypeScript, JavaScript, editor UI, and supported tools.

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "lang-gti-official/gti-language-theme",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("gti_theme").setup(opts)
    vim.cmd.colorscheme("gti")
  end,
}
```

Without a plugin manager, add the repository to `runtimepath`, then run:

```lua
require("gti_theme").setup()
vim.cmd.colorscheme("gti")
```

The theme is intentionally dark-only and sets `background=dark` when loaded.

## Configuration

Call `setup()` before loading the colorscheme. All options are optional.

<!-- config:start -->
```lua
---@class gti_theme.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: gti_theme.Highlights, colors: ColorScheme)
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
  ---@param highlights gti_theme.Highlights
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
    --   * https://github.com/lang-gti-official/gti-language-theme/tree/main/lua/gti_theme/groups
    -- telescope = true,
  },
}

```
<!-- config:end -->

Common customizations:

```lua
require("gti_theme").setup({
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
[`lua/gti_theme/groups/gti.lua`](lua/gti_theme/groups/gti.lua). They cover
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
| [aerial.nvim](https://github.com/stevearc/aerial.nvim) | [`aerial`](lua/gti_theme/groups/aerial.lua) |
| [ale](https://github.com/dense-analysis/ale) | [`ale`](lua/gti_theme/groups/ale.lua) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | [`alpha`](lua/gti_theme/groups/alpha.lua) |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim) | [`barbar`](lua/gti_theme/groups/barbar.lua) |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | [`blink`](lua/gti_theme/groups/blink.lua) |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | [`bufferline`](lua/gti_theme/groups/bufferline.lua) |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | [`cmp`](lua/gti_theme/groups/cmp.lua) |
| [codeium.nvim](https://github.com/Exafunction/codeium.nvim) | [`codeium`](lua/gti_theme/groups/codeium.lua) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | [`copilot`](lua/gti_theme/groups/copilot.lua) |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | [`dap`](lua/gti_theme/groups/dap.lua) |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | [`dashboard`](lua/gti_theme/groups/dashboard.lua) |
| [flash.nvim](https://github.com/folke/flash.nvim) | [`flash`](lua/gti_theme/groups/flash.lua) |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | [`fzf`](lua/gti_theme/groups/fzf.lua) |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | [`gitgutter`](lua/gti_theme/groups/gitgutter.lua) |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | [`gitsigns`](lua/gti_theme/groups/gitsigns.lua) |
| [glyph-palette.vim](https://github.com/lambdalisue/glyph-palette.vim) | [`glyph-palette`](lua/gti_theme/groups/glyph-palette.lua) |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | [`grug-far`](lua/gti_theme/groups/grug-far.lua) |
| [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim) | [`headlines`](lua/gti_theme/groups/headlines.lua) |
| [hop.nvim](https://github.com/phaazon/hop.nvim) | [`hop`](lua/gti_theme/groups/hop.lua) |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | [`illuminate`](lua/gti_theme/groups/illuminate.lua) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | [`indent-blankline`](lua/gti_theme/groups/indent-blankline.lua) |
| [indentmini.nvim](https://github.com/nvimdev/indentmini.nvim) | [`indentmini`](lua/gti_theme/groups/indentmini.lua) |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | [`lazy`](lua/gti_theme/groups/lazy.lua) |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | [`leap`](lua/gti_theme/groups/leap.lua) |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) | [`lspsaga`](lua/gti_theme/groups/lspsaga.lua) |
| [mini.animate](https://github.com/echasnovski/mini.animate) | [`mini_animate`](lua/gti_theme/groups/mini_animate.lua) |
| [mini.clue](https://github.com/echasnovski/mini.clue) | [`mini_clue`](lua/gti_theme/groups/mini_clue.lua) |
| [mini.completion](https://github.com/echasnovski/mini.completion) | [`mini_completion`](lua/gti_theme/groups/mini_completion.lua) |
| [mini.cursorword](https://github.com/echasnovski/mini.cursorword) | [`mini_cursorword`](lua/gti_theme/groups/mini_cursorword.lua) |
| [mini.deps](https://github.com/echasnovski/mini.deps) | [`mini_deps`](lua/gti_theme/groups/mini_deps.lua) |
| [mini.diff](https://github.com/echasnovski/mini.diff) | [`mini_diff`](lua/gti_theme/groups/mini_diff.lua) |
| [mini.files](https://github.com/echasnovski/mini.files) | [`mini_files`](lua/gti_theme/groups/mini_files.lua) |
| [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) | [`mini_hipatterns`](lua/gti_theme/groups/mini_hipatterns.lua) |
| [mini.icons](https://github.com/echasnovski/mini.icons) | [`mini_icons`](lua/gti_theme/groups/mini_icons.lua) |
| [mini.indentscope](https://github.com/echasnovski/mini.indentscope) | [`mini_indentscope`](lua/gti_theme/groups/mini_indentscope.lua) |
| [mini.jump](https://github.com/echasnovski/mini.jump) | [`mini_jump`](lua/gti_theme/groups/mini_jump.lua) |
| [mini.map](https://github.com/echasnovski/mini.map) | [`mini_map`](lua/gti_theme/groups/mini_map.lua) |
| [mini.notify](https://github.com/echasnovski/mini.notify) | [`mini_notify`](lua/gti_theme/groups/mini_notify.lua) |
| [mini.operators](https://github.com/echasnovski/mini.operators) | [`mini_operators`](lua/gti_theme/groups/mini_operators.lua) |
| [mini.pick](https://github.com/echasnovski/mini.pick) | [`mini_pick`](lua/gti_theme/groups/mini_pick.lua) |
| [mini.starter](https://github.com/echasnovski/mini.starter) | [`mini_starter`](lua/gti_theme/groups/mini_starter.lua) |
| [mini.statusline](https://github.com/echasnovski/mini.statusline) | [`mini_statusline`](lua/gti_theme/groups/mini_statusline.lua) |
| [mini.surround](https://github.com/echasnovski/mini.surround) | [`mini_surround`](lua/gti_theme/groups/mini_surround.lua) |
| [mini.tabline](https://github.com/echasnovski/mini.tabline) | [`mini_tabline`](lua/gti_theme/groups/mini_tabline.lua) |
| [mini.test](https://github.com/echasnovski/mini.test) | [`mini_test`](lua/gti_theme/groups/mini_test.lua) |
| [mini.trailspace](https://github.com/echasnovski/mini.trailspace) | [`mini_trailspace`](lua/gti_theme/groups/mini_trailspace.lua) |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | [`navic`](lua/gti_theme/groups/navic.lua) |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | [`neo-tree`](lua/gti_theme/groups/neo-tree.lua) |
| [neogit](https://github.com/TimUntersberger/neogit) | [`neogit`](lua/gti_theme/groups/neogit.lua) |
| [neotest](https://github.com/nvim-neotest/neotest) | [`neotest`](lua/gti_theme/groups/neotest.lua) |
| [noice.nvim](https://github.com/folke/noice.nvim) | [`noice`](lua/gti_theme/groups/noice.lua) |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | [`notify`](lua/gti_theme/groups/notify.lua) |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | [`nvim-tree`](lua/gti_theme/groups/nvim-tree.lua) |
| [octo.nvim](https://github.com/pwntester/octo.nvim) | [`octo`](lua/gti_theme/groups/octo.lua) |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | [`rainbow`](lua/gti_theme/groups/rainbow.lua) |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | [`render-markdown`](lua/gti_theme/groups/render-markdown.lua) |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) | [`scrollbar`](lua/gti_theme/groups/scrollbar.lua) |
| [sidekick.nvim](https://github.com/folke/sidekick.nvim) | [`sidekick`](lua/gti_theme/groups/sidekick.lua) |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | [`snacks`](lua/gti_theme/groups/snacks.lua) |
| [vim-sneak](https://github.com/justinmk/vim-sneak) | [`sneak`](lua/gti_theme/groups/sneak.lua) |
| [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim) | [`supermaven`](lua/gti_theme/groups/supermaven.lua) |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | [`telescope`](lua/gti_theme/groups/telescope.lua) |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | [`treesitter-context`](lua/gti_theme/groups/treesitter-context.lua) |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | [`trouble`](lua/gti_theme/groups/trouble.lua) |
| [vimwiki](https://github.com/vimwiki/vimwiki) | [`vimwiki`](lua/gti_theme/groups/vimwiki.lua) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | [`which-key`](lua/gti_theme/groups/which-key.lua) |
| [yanky.nvim](https://github.com/gbprod/yanky.nvim) | [`yanky`](lua/gti_theme/groups/yanky.lua) |
<!-- plugins:end -->

## Statusline and winbar integrations

```lua
require("lualine").setup({ options = { theme = "gti" } })
vim.g.lightline = { colorscheme = "gti" }
require("barbecue").setup({ theme = "gti" })
```

## Other-tool exports

The exporter sources under `lua/gti_theme/extra/` produce exactly one
GTI-palette artifact per supported tool.

<!-- extras:start -->
| Tool | GTI export |
| --- | --- |
| [Aerc](https://git.sr.ht/~rjarry/aerc/) | [`aerc/gti.ini`](extras/aerc/gti.ini) |
| [Aider](https://aider.chat) | [`aider/gti.yml`](extras/aider/gti.yml) |
| [Alacritty](https://github.com/alacritty/alacritty) | [`alacritty/gti.toml`](extras/alacritty/gti.toml) |
| [Btop++](https://github.com/aristocratos/btop) | [`btop/gti.theme`](extras/btop/gti.theme) |
| [Delta](https://github.com/dandavison/delta) | [`delta/gti.gitconfig`](extras/delta/gti.gitconfig) |
| [(Better-)Discord](https://betterdiscord.app/) | [`discord/gti.css`](extras/discord/gti.css) |
| [Dunst](https://dunst-project.org/) | [`dunst/gti.dunstrc`](extras/dunst/gti.dunstrc) |
| [eza](https://eza.rocks) | [`eza/gti.yml`](extras/eza/gti.yml) |
| [Fish](https://fishshell.com/docs/current/index.html) | [`fish/gti.fish`](extras/fish/gti.fish) |
| [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) | [`fish_themes/gti.theme`](extras/fish_themes/gti.theme) |
| [Foot](https://codeberg.org/dnkl/foot) | [`foot/gti.ini`](extras/foot/gti.ini) |
| [Fuzzel](https://codeberg.org/dnkl/fuzzel) | [`fuzzel/gti.ini`](extras/fuzzel/gti.ini) |
| [Fzf](https://github.com/junegunn/fzf) | [`fzf/gti.sh`](extras/fzf/gti.sh) |
| [Ghostty](https://github.com/ghostty-org/ghostty) | [`ghostty/gti`](extras/ghostty/gti) |
| [GitUI](https://github.com/extrawurst/gitui) | [`gitui/gti.ron`](extras/gitui/gti.ron) |
| [GNOME Terminal](https://gitlab.gnome.org/GNOME/gnome-terminal) | [`gnome_terminal/gti.dconf`](extras/gnome_terminal/gti.dconf) |
| [Helix](https://helix-editor.com/) | [`helix/gti.toml`](extras/helix/gti.toml) |
| [iSH ](https://ish.app) | [`ish/gti.json`](extras/ish/gti.json) |
| [iTerm](https://iterm2.com/) | [`iterm/gti.itermcolors`](extras/iterm/gti.itermcolors) |
| [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) | [`kitty/gti.conf`](extras/kitty/gti.conf) |
| [Konsole](https://konsole.kde.org/) | [`konsole/gti.colorscheme`](extras/konsole/gti.colorscheme) |
| [Lazygit](https://github.com/jesseduffield/lazygit) | [`lazygit/gti.yml`](extras/lazygit/gti.yml) |
| [Lua Table for testing](https://www.lua.org) | [`lua/gti.lua`](extras/lua/gti.lua) |
| [opencode](https://github.com/sst/opencode) | [`opencode/gti.json`](extras/opencode/gti.json) |
| [Prism](https://prismjs.com) | [`prism/gti.js`](extras/prism/gti.js) |
| [process-compose](https://f1bonacc1.github.io/process-compose/) | [`process_compose/gti.yaml`](extras/process_compose/gti.yaml) |
| [QTerminal](https://github.com/lxqt/qterminal) | [`qterminal/gti.colorscheme`](extras/qterminal/gti.colorscheme) |
| [Slack](https://slack.com) | [`slack/gti.txt`](extras/slack/gti.txt) |
| [Spotify Player](https://github.com/aome510/spotify-player) | [`spotify_player/gti.toml`](extras/spotify_player/gti.toml) |
| [Tailwind CSS (v4)](https://tailwindcss.com) | [`tailwindv4/gti.css`](extras/tailwindv4/gti.css) |
| [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) | [`terminator/gti.conf`](extras/terminator/gti.conf) |
| [Termux](https://termux.dev/) | [`termux/gti.properties`](extras/termux/gti.properties) |
| [Tilix](https://github.com/gnunn1/tilix) | [`tilix/gti.json`](extras/tilix/gti.json) |
| [Tmux](https://github.com/tmux/tmux/wiki) | [`tmux/gti.tmux`](extras/tmux/gti.tmux) |
| [Vim](https://vimhelp.org/) | [`vim/colors/gti.vim`](extras/vim/colors/gti.vim) |
| [Vimium](https://vimium.github.io/) | [`vimium/gti.css`](extras/vimium/gti.css) |
| [Vivaldi](https://vivaldi.com) | [`vivaldi/gti.json`](extras/vivaldi/gti.json) |
| [WezTerm](https://wezfurlong.org/wezterm/config/files.html) | [`wezterm/gti.toml`](extras/wezterm/gti.toml) |
| [Windows Terminal](https://aka.ms/terminal-documentation) | [`windows_terminal/gti.json`](extras/windows_terminal/gti.json) |
| [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) | [`xfceterm/gti.theme`](extras/xfceterm/gti.theme) |
| [Xresources](https://wiki.archlinux.org/title/X_resources) | [`xresources/gti.Xresources`](extras/xresources/gti.Xresources) |
| [Yazi](https://github.com/sxyazi/yazi) | [`yazi/gti.toml`](extras/yazi/gti.toml) |
| [Zathura](https://pwmt.org/projects/zathura/) | [`zathura/gti.zathurarc`](extras/zathura/gti.zathurarc) |
| [Zellij](https://zellij.dev/) | [`zellij/gti.kdl`](extras/zellij/gti.kdl) |
<!-- extras:end -->

Regenerate them with:

```sh
./scripts/build
```

## Repository layout

- `colors/gti.lua`: Neovim colorscheme entrypoint.
- `lua/gti_theme/palette.lua`: literal GTI palette.
- `lua/gti_theme/colors.lua`: derived colors and terminal palette.
- `lua/gti_theme/groups/`: core and plugin highlight definitions.
- `lua/gti_theme/groups/gti.lua`: presentation-only GTI adaptations.
- `lua/gti_theme/extra/`: exporters for other tools.
- `tests/`: runtime, integration, group, export, and GTI checks.

## Development

```sh
./scripts/test
./scripts/build
./scripts/docs
```

## Credits

The plugin architecture began as a fork of
[Tokyo Night](https://github.com/folke/tokyonight.nvim) by Folke Lemaitre.
GTI Theme has its own palette and GTI-focused presentation. Its origin and
license are recorded in [`NOTICE`](NOTICE) and [`LICENSE`](LICENSE).
