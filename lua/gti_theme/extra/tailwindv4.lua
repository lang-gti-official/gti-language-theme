local util = require("gti_theme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-gti-bg: oklch(from ${bg} l c h);
  --color-gti-bg-dark: oklch(from ${bg_dark} l c h);
  --color-gti-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-gti-bg-float: var(--color-gti-bg-dark);
  --color-gti-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-gti-bg-popup: var(--color-gti-bg-dark);
  --color-gti-bg-search: var(--color-gti-blue0);
  --color-gti-bg-sidebar: var(--color-gti-bg-dark);
  --color-gti-bg-statusline: var(--color-gti-bg-dark);
  --color-gti-bg-visual: oklch(from ${bg_visual} l c h);
  --color-gti-black: oklch(from ${black} l c h);
  --color-gti-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-gti-blue: oklch(from ${blue} l c h);
  --color-gti-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-gti-blue0: oklch(from ${blue0} l c h);
  --color-gti-blue1: oklch(from ${blue1} l c h);
  --color-gti-blue2: oklch(from ${blue2} l c h);
  --color-gti-blue5: oklch(from ${blue5} l c h);
  --color-gti-blue6: oklch(from ${blue6} l c h);
  --color-gti-blue7: oklch(from ${blue7} l c h);
  --color-gti-border: var(--color-gti-black);
  --color-gti-border-highlight: oklch(from ${border_highlight} l c h);
  --color-gti-comment: oklch(from ${comment} l c h);
  --color-gti-cyan: oklch(from ${cyan} l c h);
  --color-gti-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-gti-dark3: oklch(from ${dark3} l c h);
  --color-gti-dark5: oklch(from ${dark5} l c h);
  --color-gti-diff-add: oklch(from ${diff.add} l c h);
  --color-gti-diff-change: oklch(from ${diff.change} l c h);
  --color-gti-diff-delete: oklch(from ${diff.delete} l c h);
  --color-gti-diff-text: var(--color-gti-blue7);
  --color-gti-error: var(--color-gti-red1);
  --color-gti-fg: oklch(from ${fg} l c h);
  --color-gti-fg-dark: oklch(from ${fg_dark} l c h);
  --color-gti-fg-float: var(--color-gti-fg);
  --color-gti-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-gti-fg-sidebar: var(--color-gti-fg-dark);
  --color-gti-git-add: oklch(from ${git.add} l c h);
  --color-gti-git-change: oklch(from ${git.change} l c h);
  --color-gti-git-delete: oklch(from ${git.delete} l c h);
  --color-gti-git-ignore: var(--color-gti-dark3);
  --color-gti-green: oklch(from ${green} l c h);
  --color-gti-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-gti-green1: oklch(from ${green1} l c h);
  --color-gti-green2: oklch(from ${green2} l c h);
  --color-gti-hint: var(--color-gti-teal);
  --color-gti-info: var(--color-gti-blue2);
  --color-gti-magenta: oklch(from ${magenta} l c h);
  --color-gti-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-gti-magenta2: oklch(from ${magenta2} l c h);
  --color-gti-orange: oklch(from ${orange} l c h);
  --color-gti-purple: oklch(from ${purple} l c h);
  --color-gti-rainbow1: var(--color-gti-blue);
  --color-gti-rainbow2: var(--color-gti-yellow);
  --color-gti-rainbow3: var(--color-gti-green);
  --color-gti-rainbow4: var(--color-gti-teal);
  --color-gti-rainbow5: var(--color-gti-magenta);
  --color-gti-rainbow6: var(--color-gti-purple);
  --color-gti-rainbow7: var(--color-gti-orange);
  --color-gti-rainbow8: var(--color-gti-red);
  --color-gti-red: oklch(from ${red} l c h);
  --color-gti-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-gti-red1: oklch(from ${red1} l c h);
  --color-gti-teal: oklch(from ${teal} l c h);
  --color-gti-todo: var(--color-gti-blue);
  --color-gti-warning: var(--color-gti-yellow);
  --color-gti-yellow: oklch(from ${yellow} l c h);
  --color-gti-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
