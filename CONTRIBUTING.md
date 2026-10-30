# Contributing

This is a single-theme codebase. Public names are fixed:

- Lua module: `gti_theme`
- Neovim colorscheme: `gti`
- Integration theme name: `gti`

There are no light/dark variants or compatibility entrypoints.

## Highlight architecture

`lua/gti_theme/palette.lua` contains literal colors. `colors.lua` derives
backgrounds, diagnostics, diffs, and terminal colors. `theme.lua` combines those
colors with the modules under `groups/` and applies the resulting Neovim
highlights.

The core group modules are:

- `base.lua`: classic Vim highlight groups.
- `treesitter.lua`: generic Tree-sitter captures.
- `semantic_tokens.lua`: generic LSP semantic tokens.
- `kinds.lua`: completion and symbol kinds.
- `gti.lua`: GTI-only presentation links.

Treat the current generic and C++ appearance as a compatibility surface. A GTI
display mismatch should normally be fixed with a `.gti` link in `gti.lua`, not
by changing shared semantic-token or Tree-sitter groups.

## Plugin groups

Each supported plugin has one module in `lua/gti_theme/groups/`:

```lua
local M = {}

M.url = "https://github.com/owner/plugin.nvim"

---@type gti_theme.HighlightsFn
function M.get(colors, opts)
  return {
    PluginHeading = { fg = colors.blue, bold = true },
  }
end

return M
```

Register it in `Groups.plugins` inside `lua/gti_theme/groups/init.lua` and add
or update tests. Reuse palette fields and existing highlight links instead of
duplicating literal colors.

## Exporters

Each exporter under `lua/gti_theme/extra/` receives the same derived colors
used by Neovim. Register it in `gti_theme.extra.extras`; the output path is
`extras/<tool>/gti.<extension>` (or the tool-specific registered subpath).
Exporter modules must be side-effect-free when required.

Keep the single GTI palette coherent across Neovim and exports. A new tool
should receive the existing palette.

## Verification

Run these before submitting a change:

```sh
./scripts/test
./scripts/build
./scripts/docs
git diff --check
```

For highlighting changes, also compare the affected construct with the current
C++ result and confirm that unrelated generic groups did not change.
