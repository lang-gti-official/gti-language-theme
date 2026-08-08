local util = require("github_theme.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-github-bg: oklch(from ${bg} l c h);
  --color-github-bg-dark: oklch(from ${bg_dark} l c h);
  --color-github-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-github-bg-float: var(--color-github-bg-dark);
  --color-github-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-github-bg-popup: var(--color-github-bg-dark);
  --color-github-bg-search: var(--color-github-blue0);
  --color-github-bg-sidebar: var(--color-github-bg-dark);
  --color-github-bg-statusline: var(--color-github-bg-dark);
  --color-github-bg-visual: oklch(from ${bg_visual} l c h);
  --color-github-black: oklch(from ${black} l c h);
  --color-github-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-github-blue: oklch(from ${blue} l c h);
  --color-github-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-github-blue0: oklch(from ${blue0} l c h);
  --color-github-blue1: oklch(from ${blue1} l c h);
  --color-github-blue2: oklch(from ${blue2} l c h);
  --color-github-blue5: oklch(from ${blue5} l c h);
  --color-github-blue6: oklch(from ${blue6} l c h);
  --color-github-blue7: oklch(from ${blue7} l c h);
  --color-github-border: var(--color-github-black);
  --color-github-border-highlight: oklch(from ${border_highlight} l c h);
  --color-github-comment: oklch(from ${comment} l c h);
  --color-github-cyan: oklch(from ${cyan} l c h);
  --color-github-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-github-dark3: oklch(from ${dark3} l c h);
  --color-github-dark5: oklch(from ${dark5} l c h);
  --color-github-diff-add: oklch(from ${diff.add} l c h);
  --color-github-diff-change: oklch(from ${diff.change} l c h);
  --color-github-diff-delete: oklch(from ${diff.delete} l c h);
  --color-github-diff-text: var(--color-github-blue7);
  --color-github-error: var(--color-github-red1);
  --color-github-fg: oklch(from ${fg} l c h);
  --color-github-fg-dark: oklch(from ${fg_dark} l c h);
  --color-github-fg-float: var(--color-github-fg);
  --color-github-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-github-fg-sidebar: var(--color-github-fg-dark);
  --color-github-git-add: oklch(from ${git.add} l c h);
  --color-github-git-change: oklch(from ${git.change} l c h);
  --color-github-git-delete: oklch(from ${git.delete} l c h);
  --color-github-git-ignore: var(--color-github-dark3);
  --color-github-green: oklch(from ${green} l c h);
  --color-github-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-github-green1: oklch(from ${green1} l c h);
  --color-github-green2: oklch(from ${green2} l c h);
  --color-github-hint: var(--color-github-teal);
  --color-github-info: var(--color-github-blue2);
  --color-github-magenta: oklch(from ${magenta} l c h);
  --color-github-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-github-magenta2: oklch(from ${magenta2} l c h);
  --color-github-orange: oklch(from ${orange} l c h);
  --color-github-purple: oklch(from ${purple} l c h);
  --color-github-rainbow1: var(--color-github-blue);
  --color-github-rainbow2: var(--color-github-yellow);
  --color-github-rainbow3: var(--color-github-green);
  --color-github-rainbow4: var(--color-github-teal);
  --color-github-rainbow5: var(--color-github-magenta);
  --color-github-rainbow6: var(--color-github-purple);
  --color-github-rainbow7: var(--color-github-orange);
  --color-github-rainbow8: var(--color-github-red);
  --color-github-red: oklch(from ${red} l c h);
  --color-github-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-github-red1: oklch(from ${red1} l c h);
  --color-github-teal: oklch(from ${teal} l c h);
  --color-github-todo: var(--color-github-blue);
  --color-github-warning: var(--color-github-yellow);
  --color-github-yellow: oklch(from ${yellow} l c h);
  --color-github-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
