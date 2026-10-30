local colors = {
  _name = "gti",
  _style = "gti",
  bg = "#24292e",
  bg_dark = "#1f2428",
  bg_dark1 = "#1f2428",
  bg_float = "#1f2428",
  bg_highlight = "#343b42",
  bg_popup = "#1f2428",
  bg_search = "#3d59a1",
  bg_sidebar = "#1f2428",
  bg_statusline = "#1f2428",
  bg_visual = "#2e3c5c",
  black = "#1d2125",
  blue = "#388bfd",
  blue0 = "#3d59a1",
  blue1 = "#58a6ff",
  blue2 = "#79c0ff",
  blue5 = "#79b8ff",
  blue6 = "#cae8ff",
  blue7 = "#394b70",
  border = "#1d2125",
  border_highlight = "#4e8dd5",
  comment = "#8b949e",
  cyan = "#7dcfff",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#555a5f",
    change = "#272e38",
    delete = "#522c2f",
    text = "#394b70"
  },
  error = "#da3633",
  fg = "#e6edf3",
  fg_dark = "#e1e7ed",
  fg_float = "#e6edf3",
  fg_gutter = "#6e7681",
  fg_sidebar = "#e1e7ed",
  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
    ignore = "#545c7e"
  },
  green = "#e6edf3",
  green1 = "#e6edf3",
  green2 = "#e6edf3",
  hint = "#1abc9c",
  info = "#79c0ff",
  magenta = "#bb9af7",
  magenta2 = "#ff007c",
  new = {
    blue = "",
    purple = "",
    red = "",
    yellow = ""
  },
  none = "NONE",
  orange = "#f0883e",
  purple = "#B392F0",
  rainbow = { "#388bfd", "#FFAB70", "#e6edf3", "#1abc9c", "#bb9af7", "#B392F0", "#f0883e", "#ff7b72" },
  red = "#ff7b72",
  red1 = "#da3633",
  teal = "#1abc9c",
  terminal = {
    black = "#1d2125",
    black_bright = "#414868",
    blue = "#388bfd",
    blue_bright = "#5d98ff",
    cyan = "#7dcfff",
    cyan_bright = "#a4daff",
    green = "#e6edf3",
    green_bright = "#f8fbfd",
    magenta = "#bb9af7",
    magenta_bright = "#c7a9ff",
    red = "#ff7b72",
    red_bright = "#ff928c",
    white = "#e1e7ed",
    white_bright = "#e6edf3",
    yellow = "#FFAB70",
    yellow_bright = "#ffbe98"
  },
  terminal_black = "#414868",
  todo = "#388bfd",
  warning = "#FFAB70",
  yellow = "#FFAB70"
}

local highlights = {
  ["@boolean"] = {
    fg = "#79b8ff"
  },
  ["@constant.builtin"] = {
    fg = "#79b8ff"
  },
  ["@constructor"] = {
    fg = "#B392F0"
  },
  ["@function.macro"] = {
    fg = "#ff7b72"
  },
  ["@keyword.import"] = {
    fg = "#ff7b72"
  },
  ["@keyword.modifier"] = {
    fg = "#ff7b72"
  },
  ["@keyword.repeat"] = {
    fg = "#ff7b72"
  },
  ["@keyword.type"] = {
    fg = "#ff7b72"
  },
  ["@lsp.mod.deduced"] = {
    fg = "#ff7b72"
  },
  ["@lsp.type.bracket"] = {
    fg = "#ff7b72"
  },
  ["@lsp.type.class"] = {
    fg = "#B392F0"
  },
  ["@lsp.type.class.gti"] = {
    link = "@lsp.type.class"
  },
  ["@lsp.type.enum"] = {
    fg = "#B392F0"
  },
  ["@lsp.type.enumMember"] = {
    fg = "#79b8ff"
  },
  ["@lsp.type.keyword.gti"] = {
    link = "@none"
  },
  ["@lsp.type.macro"] = {
    fg = "#B392F0"
  },
  ["@lsp.type.macro.gti"] = {
    link = "@keyword.directive"
  },
  ["@lsp.type.parameter"] = {
    fg = "#FFAB70"
  },
  ["@lsp.type.typeParameter"] = {
    fg = "#B392F0"
  },
  ["@lsp.type.typeParameter.gti"] = {
    link = "@lsp.type.typeParameter"
  },
  ["@lsp.typemod.class.declaration.gti"] = {
    link = "@lsp.type.class"
  },
  ["@lsp.typemod.function.defaultLibrary.gti"] = {
    link = "@function"
  },
  ["@lsp.typemod.namespace.defaultLibrary.gti"] = {
    link = "@module"
  },
  ["@lsp.typemod.parameter.readonly.gti"] = {
    link = "@variable.parameter"
  },
  ["@lsp.typemod.variable.readonly.gti"] = {
    link = "@variable"
  },
  ["@markup.heading.1.markdown"] = {
    bg = "#263343",
    bold = true,
    fg = "#388bfd"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#3a3635",
    bold = true,
    fg = "#FFAB70"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#373d42",
    bold = true,
    fg = "#e6edf3"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#233839",
    bold = true,
    fg = "#1abc9c"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#333442",
    bold = true,
    fg = "#bb9af7"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#323441",
    bold = true,
    fg = "#B392F0"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#383330",
    bold = true,
    fg = "#f0883e"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#3a3135",
    bold = true,
    fg = "#ff7b72"
  },
  ["@module"] = {
    fg = "#B392F0"
  },
  ["@operator"] = {
    fg = "#ff7b72"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#ff7b72"
  },
  ["@variable"] = {
    fg = "#e6edf3"
  },
  ["@variable.builtin"] = {
    fg = "#79b8ff"
  },
  ["@variable.parameter"] = {
    fg = "#FFAB70"
  },
  ALEErrorSign = {
    fg = "#da3633"
  },
  ALEWarningSign = {
    fg = "#FFAB70"
  },
  AerialGuide = {
    fg = "#6e7681"
  },
  AerialLine = "LspInlayHint",
  AerialNormal = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  AlphaButtons = {
    fg = "#7dcfff"
  },
  AlphaFooter = {
    fg = "#58a6ff"
  },
  AlphaHeader = {
    fg = "#388bfd"
  },
  AlphaHeaderLabel = {
    fg = "#f0883e"
  },
  AlphaShortcut = {
    fg = "#f0883e"
  },
  BlinkCmpDoc = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  BlinkCmpDocBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  BlinkCmpGhostText = {
    fg = "#414868"
  },
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#e1e7ed"
  },
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#6e7681",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  BlinkCmpMenu = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  BlinkCmpMenuBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  BlinkCmpSignatureHelp = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  Bold = {
    bold = true,
    fg = "#e6edf3"
  },
  BufferAlternate = {
    bg = "#6e7681",
    fg = "#e6edf3"
  },
  BufferAlternateADDED = {
    bg = "#6e7681",
    fg = "#449dab"
  },
  BufferAlternateCHANGED = {
    bg = "#6e7681",
    fg = "#6183bb"
  },
  BufferAlternateDELETED = {
    bg = "#6e7681",
    fg = "#914c54"
  },
  BufferAlternateERROR = {
    bg = "#6e7681",
    fg = "#da3633"
  },
  BufferAlternateHINT = {
    bg = "#6e7681",
    fg = "#1abc9c"
  },
  BufferAlternateINFO = {
    bg = "#6e7681",
    fg = "#79c0ff"
  },
  BufferAlternateIndex = {
    bg = "#6e7681",
    fg = "#79c0ff"
  },
  BufferAlternateMod = {
    bg = "#6e7681",
    fg = "#FFAB70"
  },
  BufferAlternateSign = {
    bg = "#6e7681",
    fg = "#79c0ff"
  },
  BufferAlternateTarget = {
    bg = "#6e7681",
    fg = "#ff7b72"
  },
  BufferAlternateWARN = {
    bg = "#6e7681",
    fg = "#FFAB70"
  },
  BufferCurrent = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  BufferCurrentADDED = {
    bg = "#24292e",
    fg = "#449dab"
  },
  BufferCurrentCHANGED = {
    bg = "#24292e",
    fg = "#6183bb"
  },
  BufferCurrentDELETED = {
    bg = "#24292e",
    fg = "#914c54"
  },
  BufferCurrentERROR = {
    bg = "#24292e",
    fg = "#da3633"
  },
  BufferCurrentHINT = {
    bg = "#24292e",
    fg = "#1abc9c"
  },
  BufferCurrentINFO = {
    bg = "#24292e",
    fg = "#79c0ff"
  },
  BufferCurrentIndex = {
    bg = "#24292e",
    fg = "#79c0ff"
  },
  BufferCurrentMod = {
    bg = "#24292e",
    fg = "#FFAB70"
  },
  BufferCurrentSign = {
    bg = "#24292e",
    fg = "#24292e"
  },
  BufferCurrentTarget = {
    bg = "#24292e",
    fg = "#ff7b72"
  },
  BufferCurrentWARN = {
    bg = "#24292e",
    fg = "#FFAB70"
  },
  BufferInactive = {
    bg = "#2a3036",
    fg = "#636a8b"
  },
  BufferInactiveADDED = {
    bg = "#2a3036",
    fg = "#3e8692"
  },
  BufferInactiveCHANGED = {
    bg = "#2a3036",
    fg = "#55719f"
  },
  BufferInactiveDELETED = {
    bg = "#2a3036",
    fg = "#7b454c"
  },
  BufferInactiveERROR = {
    bg = "#2a3036",
    fg = "#b63332"
  },
  BufferInactiveHINT = {
    bg = "#2a3036",
    fg = "#1c9f86"
  },
  BufferInactiveINFO = {
    bg = "#2a3036",
    fg = "#68a2d5"
  },
  BufferInactiveIndex = {
    bg = "#2a3036",
    fg = "#737aa2"
  },
  BufferInactiveMod = {
    bg = "#2a3036",
    fg = "#d39163"
  },
  BufferInactiveSign = {
    bg = "#2a3036",
    fg = "#24292e"
  },
  BufferInactiveTarget = {
    bg = "#2a3036",
    fg = "#ff7b72"
  },
  BufferInactiveWARN = {
    bg = "#2a3036",
    fg = "#d39163"
  },
  BufferLineIndicatorSelected = {
    fg = "#6183bb"
  },
  BufferOffset = {
    bg = "#1f2428",
    fg = "#737aa2"
  },
  BufferTabpageFill = {
    bg = "#31373e",
    fg = "#737aa2"
  },
  BufferTabpages = {
    bg = "#1f2428",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  BufferVisibleADDED = {
    bg = "#1f2428",
    fg = "#449dab"
  },
  BufferVisibleCHANGED = {
    bg = "#1f2428",
    fg = "#6183bb"
  },
  BufferVisibleDELETED = {
    bg = "#1f2428",
    fg = "#914c54"
  },
  BufferVisibleERROR = {
    bg = "#1f2428",
    fg = "#da3633"
  },
  BufferVisibleHINT = {
    bg = "#1f2428",
    fg = "#1abc9c"
  },
  BufferVisibleINFO = {
    bg = "#1f2428",
    fg = "#79c0ff"
  },
  BufferVisibleIndex = {
    bg = "#1f2428",
    fg = "#79c0ff"
  },
  BufferVisibleMod = {
    bg = "#1f2428",
    fg = "#FFAB70"
  },
  BufferVisibleSign = {
    bg = "#1f2428",
    fg = "#79c0ff"
  },
  BufferVisibleTarget = {
    bg = "#1f2428",
    fg = "#ff7b72"
  },
  BufferVisibleWARN = {
    bg = "#1f2428",
    fg = "#FFAB70"
  },
  CmpDocumentation = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  CmpDocumentationBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  CmpGhostText = {
    fg = "#414868"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#6e7681",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#e1e7ed"
  },
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#8b949e"
  },
  CodeBlock = {
    bg = "#1f2428"
  },
  CodeiumSuggestion = {
    fg = "#414868"
  },
  ColorColumn = {
    bg = "#1d2125"
  },
  Comment = {
    fg = "#8b949e",
    italic = true
  },
  ComplHint = {
    fg = "#414868"
  },
  Conceal = {
    fg = "#737aa2"
  },
  CopilotAnnotation = {
    fg = "#414868"
  },
  CopilotSuggestion = {
    fg = "#414868"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#e6edf3",
    fg = "#24292e"
  },
  CursorColumn = {
    bg = "#343b42"
  },
  CursorIM = {
    bg = "#e6edf3",
    fg = "#24292e"
  },
  CursorLine = {
    bg = "#343b42"
  },
  CursorLineNr = {
    bold = true,
    fg = "#f0883e"
  },
  DapStoppedLine = {
    bg = "#3a3635"
  },
  DashboardDesc = {
    fg = "#7dcfff"
  },
  DashboardFiles = {
    fg = "#388bfd"
  },
  DashboardFooter = {
    fg = "#58a6ff"
  },
  DashboardHeader = {
    fg = "#388bfd"
  },
  DashboardIcon = {
    fg = "#7dcfff"
  },
  DashboardKey = {
    fg = "#f0883e"
  },
  DashboardMruIcon = {
    fg = "#B392F0"
  },
  DashboardMruTitle = {
    fg = "#7dcfff"
  },
  DashboardProjectIcon = {
    fg = "#FFAB70"
  },
  DashboardProjectTitle = {
    fg = "#7dcfff"
  },
  DashboardProjectTitleIcon = {
    fg = "#f0883e"
  },
  DashboardShortCut = {
    fg = "#7dcfff"
  },
  DashboardShortCutIcon = {
    fg = "#bb9af7"
  },
  DefinitionCount = {
    fg = "#B392F0"
  },
  DefinitionIcon = {
    fg = "#388bfd"
  },
  DiagnosticError = {
    fg = "#da3633"
  },
  DiagnosticHint = {
    fg = "#1abc9c"
  },
  DiagnosticInfo = {
    fg = "#79c0ff"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#da3633",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#1abc9c",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#79c0ff",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#FFAB70",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#414868"
  },
  DiagnosticVirtualTextError = {
    bg = "#362a2f",
    fg = "#da3633"
  },
  DiagnosticVirtualTextHint = {
    bg = "#233839",
    fg = "#1abc9c"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#2d3843",
    fg = "#79c0ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#3a3635",
    fg = "#FFAB70"
  },
  DiagnosticWarn = {
    fg = "#FFAB70"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#555a5f"
  },
  DiffChange = {
    bg = "#272e38"
  },
  DiffDelete = {
    bg = "#522c2f"
  },
  DiffText = {
    bg = "#394b70"
  },
  Directory = {
    fg = "#388bfd"
  },
  EndOfBuffer = {
    fg = "#24292e"
  },
  ErrorMsg = {
    fg = "#da3633"
  },
  FlashBackdrop = {
    fg = "#545c7e"
  },
  FlashLabel = {
    bg = "#ff007c",
    bold = true,
    fg = "#e6edf3"
  },
  FloatBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  FloatTitle = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  FoldColumn = {
    bg = "#24292e",
    fg = "#8b949e"
  },
  Folded = {
    bg = "#6e7681",
    fg = "#388bfd"
  },
  Foo = {
    bg = "#ff007c",
    fg = "#e6edf3"
  },
  Function = {
    fg = "#B392F0"
  },
  FzfLuaBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#e1e7ed"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#e6edf3"
  },
  FzfLuaFzfPointer = {
    fg = "#ff007c"
  },
  FzfLuaFzfSeparator = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  FzfLuaTitle = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  GitGutterAdd = {
    fg = "#449dab"
  },
  GitGutterAddLineNr = {
    fg = "#449dab"
  },
  GitGutterChange = {
    fg = "#6183bb"
  },
  GitGutterChangeLineNr = {
    fg = "#6183bb"
  },
  GitGutterDelete = {
    fg = "#914c54"
  },
  GitGutterDeleteLineNr = {
    fg = "#914c54"
  },
  GitSignsAdd = {
    fg = "#449dab"
  },
  GitSignsChange = {
    fg = "#6183bb"
  },
  GitSignsDelete = {
    fg = "#914c54"
  },
  GlyphPalette1 = {
    fg = "#da3633"
  },
  GlyphPalette2 = {
    fg = "#e6edf3"
  },
  GlyphPalette3 = {
    fg = "#FFAB70"
  },
  GlyphPalette4 = {
    fg = "#388bfd"
  },
  GlyphPalette6 = {
    fg = "#e6edf3"
  },
  GlyphPalette7 = {
    fg = "#e6edf3"
  },
  GlyphPalette9 = {
    fg = "#ff7b72"
  },
  GrugFarHelpHeader = {
    fg = "#8b949e"
  },
  GrugFarHelpHeaderKey = {
    fg = "#7dcfff"
  },
  GrugFarInputLabel = {
    fg = "#58a6ff"
  },
  GrugFarInputPlaceholder = {
    fg = "#545c7e"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#6183bb"
  },
  GrugFarResultsHeader = {
    fg = "#f0883e"
  },
  GrugFarResultsLineColumn = {
    fg = "#545c7e"
  },
  GrugFarResultsLineNo = {
    fg = "#545c7e"
  },
  GrugFarResultsMatch = {
    bg = "#ff7b72",
    fg = "#1d2125"
  },
  GrugFarResultsStats = {
    fg = "#388bfd"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#252e38"
  },
  Headline2 = {
    bg = "#2f3031"
  },
  Headline3 = {
    bg = "#2e3338"
  },
  Headline4 = {
    bg = "#233034"
  },
  Headline5 = {
    bg = "#2c2f38"
  },
  Headline6 = {
    bg = "#2b2e38"
  },
  Headline7 = {
    bg = "#2e2e2f"
  },
  Headline8 = {
    bg = "#2f2d31"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff007c"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#79c0ff"
  },
  HopNextKey2 = {
    fg = "#5784ab"
  },
  HopUnmatched = {
    fg = "#545c7e"
  },
  IblIndent = {
    fg = "#6e7681",
    nocombine = true
  },
  IblScope = {
    fg = "#58a6ff",
    nocombine = true
  },
  Identifier = {
    fg = "#e6edf3"
  },
  IlluminatedWordRead = {
    bg = "#6e7681"
  },
  IlluminatedWordText = {
    bg = "#6e7681"
  },
  IlluminatedWordWrite = {
    bg = "#6e7681"
  },
  IncSearch = {
    bg = "#f0883e",
    fg = "#1d2125"
  },
  IndentBlanklineChar = {
    fg = "#6e7681",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#58a6ff",
    nocombine = true
  },
  IndentLine = {
    fg = "#6e7681",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#58a6ff",
    nocombine = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ff007c"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#6e7681"
  },
  LeapBackdrop = {
    fg = "#545c7e"
  },
  LeapLabel = {
    bold = true,
    fg = "#ff007c"
  },
  LeapMatch = {
    bg = "#ff007c",
    bold = true,
    fg = "#e6edf3"
  },
  LineNr = {
    fg = "#6e7681"
  },
  LineNrAbove = {
    fg = "#6e7681"
  },
  LineNrBelow = {
    fg = "#6e7681"
  },
  LspCodeLens = {
    fg = "#8b949e"
  },
  LspFloatWinBorder = {
    fg = "#4e8dd5"
  },
  LspFloatWinNormal = {
    bg = "#1f2428"
  },
  LspInfoBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  LspInlayHint = {
    bg = "#262c35",
    fg = "#545c7e"
  },
  LspReferenceRead = {
    bg = "#6e7681"
  },
  LspReferenceText = {
    bg = "#6e7681"
  },
  LspReferenceWrite = {
    bg = "#6e7681"
  },
  LspSagaBorderTitle = {
    fg = "#7dcfff"
  },
  LspSagaCodeActionBorder = {
    fg = "#388bfd"
  },
  LspSagaCodeActionContent = {
    fg = "#B392F0"
  },
  LspSagaCodeActionTitle = {
    fg = "#58a6ff"
  },
  LspSagaDefPreviewBorder = {
    fg = "#e6edf3"
  },
  LspSagaFinderSelection = {
    fg = "#2e3c5c"
  },
  LspSagaHoverBorder = {
    fg = "#388bfd"
  },
  LspSagaRenameBorder = {
    fg = "#e6edf3"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff7b72"
  },
  LspSignatureActiveParameter = {
    bg = "#283140",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#f0883e"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#6e7681"
  },
  MiniCursorwordCurrent = {
    bg = "#6e7681"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#914c54",
    fg = "#1d2125"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#449dab",
    fg = "#1d2125"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#449dab"
  },
  MiniDiffSignChange = {
    fg = "#6183bb"
  },
  MiniDiffSignDelete = {
    fg = "#914c54"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#e6edf3"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#1f2428",
    bold = true,
    fg = "#4e8dd5"
  },
  MiniHipatternsFixme = {
    bg = "#da3633",
    bold = true,
    fg = "#1d2125"
  },
  MiniHipatternsHack = {
    bg = "#FFAB70",
    bold = true,
    fg = "#1d2125"
  },
  MiniHipatternsNote = {
    bg = "#1abc9c",
    bold = true,
    fg = "#1d2125"
  },
  MiniHipatternsTodo = {
    bg = "#79c0ff",
    bold = true,
    fg = "#1d2125"
  },
  MiniIconsAzure = {
    fg = "#79c0ff"
  },
  MiniIconsBlue = {
    fg = "#388bfd"
  },
  MiniIconsCyan = {
    fg = "#1abc9c"
  },
  MiniIconsGreen = {
    fg = "#e6edf3"
  },
  MiniIconsGrey = {
    fg = "#e6edf3"
  },
  MiniIconsOrange = {
    fg = "#f0883e"
  },
  MiniIconsPurple = {
    fg = "#B392F0"
  },
  MiniIconsRed = {
    fg = "#ff7b72"
  },
  MiniIconsYellow = {
    fg = "#FFAB70"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#58a6ff",
    nocombine = true
  },
  MiniJump = {
    bg = "#ff007c",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff007c",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#1f2428",
    fg = "#1abc9c",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#f0883e",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#1f2428",
    fg = "#1abc9c"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#1f2428",
    fg = "#79c0ff"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#FFAB70",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#388bfd"
  },
  MiniStarterInactive = {
    fg = "#8b949e",
    italic = true
  },
  MiniStarterItem = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  MiniStarterItemBullet = {
    fg = "#4e8dd5"
  },
  MiniStarterItemPrefix = {
    fg = "#FFAB70"
  },
  MiniStarterQuery = {
    fg = "#79c0ff"
  },
  MiniStarterSection = {
    fg = "#58a6ff"
  },
  MiniStatuslineDevinfo = {
    bg = "#6e7681",
    fg = "#e1e7ed"
  },
  MiniStatuslineFileinfo = {
    bg = "#6e7681",
    fg = "#e1e7ed"
  },
  MiniStatuslineFilename = {
    bg = "#343b42",
    fg = "#e1e7ed"
  },
  MiniStatuslineInactive = {
    bg = "#1f2428",
    fg = "#388bfd"
  },
  MiniStatuslineModeCommand = {
    bg = "#FFAB70",
    bold = true,
    fg = "#1d2125"
  },
  MiniStatuslineModeInsert = {
    bg = "#e6edf3",
    bold = true,
    fg = "#1d2125"
  },
  MiniStatuslineModeNormal = {
    bg = "#388bfd",
    bold = true,
    fg = "#1d2125"
  },
  MiniStatuslineModeOther = {
    bg = "#1abc9c",
    bold = true,
    fg = "#1d2125"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff7b72",
    bold = true,
    fg = "#1d2125"
  },
  MiniStatuslineModeVisual = {
    bg = "#bb9af7",
    bold = true,
    fg = "#1d2125"
  },
  MiniSurround = {
    bg = "#f0883e",
    fg = "#1d2125"
  },
  MiniTablineCurrent = {
    bg = "#6e7681",
    fg = "#e6edf3"
  },
  MiniTablineFill = {
    bg = "#1d2125"
  },
  MiniTablineHidden = {
    bg = "#1f2428",
    fg = "#737aa2"
  },
  MiniTablineModifiedCurrent = {
    bg = "#6e7681",
    fg = "#FFAB70"
  },
  MiniTablineModifiedHidden = {
    bg = "#1f2428",
    fg = "#bd845c"
  },
  MiniTablineModifiedVisible = {
    bg = "#1f2428",
    fg = "#FFAB70"
  },
  MiniTablineTabpagesection = {
    bg = "#6e7681",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff7b72"
  },
  MiniTestPass = {
    bold = true,
    fg = "#e6edf3"
  },
  MiniTrailspace = {
    bg = "#ff7b72"
  },
  ModeMsg = {
    bold = true,
    fg = "#e1e7ed"
  },
  MoreMsg = {
    fg = "#388bfd"
  },
  MsgArea = {
    fg = "#e1e7ed"
  },
  NavicSeparator = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  NavicText = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  NeoTreeDimText = {
    fg = "#6e7681"
  },
  NeoTreeFileName = {
    fg = "#e1e7ed"
  },
  NeoTreeGitModified = {
    fg = "#f0883e"
  },
  NeoTreeGitStaged = {
    fg = "#e6edf3"
  },
  NeoTreeGitUntracked = {
    fg = "#bb9af7"
  },
  NeoTreeNormal = {
    bg = "#1f2428",
    fg = "#e1e7ed"
  },
  NeoTreeNormalNC = {
    bg = "#1f2428",
    fg = "#e1e7ed"
  },
  NeoTreeTabActive = {
    bg = "#1f2428",
    bold = true,
    fg = "#388bfd"
  },
  NeoTreeTabInactive = {
    bg = "#191d20",
    fg = "#545c7e"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#1f2428",
    fg = "#388bfd"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#191d20",
    fg = "#24292e"
  },
  NeogitBranch = {
    fg = "#bb9af7"
  },
  NeogitDiffAddHighlight = {
    bg = "#555a5f",
    fg = "#449dab"
  },
  NeogitDiffContextHighlight = {
    bg = "#495058",
    fg = "#e1e7ed"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#522c2f",
    fg = "#914c54"
  },
  NeogitHunkHeader = {
    bg = "#343b42",
    fg = "#e6edf3"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#6e7681",
    fg = "#388bfd"
  },
  NeogitRemote = {
    fg = "#B392F0"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#B392F0"
  },
  NeotestBorder = {
    fg = "#388bfd"
  },
  NeotestDir = {
    fg = "#388bfd"
  },
  NeotestExpandMarker = {
    fg = "#e1e7ed"
  },
  NeotestFailed = {
    fg = "#ff7b72"
  },
  NeotestFile = {
    fg = "#1abc9c"
  },
  NeotestFocused = {
    fg = "#FFAB70"
  },
  NeotestIndent = {
    fg = "#e1e7ed"
  },
  NeotestMarked = {
    fg = "#388bfd"
  },
  NeotestNamespace = {
    fg = "#e6edf3"
  },
  NeotestPassed = {
    fg = "#e6edf3"
  },
  NeotestRunning = {
    fg = "#FFAB70"
  },
  NeotestSkipped = {
    fg = "#388bfd"
  },
  NeotestTarget = {
    fg = "#388bfd"
  },
  NeotestTest = {
    fg = "#e1e7ed"
  },
  NeotestWinSelect = {
    fg = "#388bfd"
  },
  NoiceCmdlineIconInput = {
    fg = "#FFAB70"
  },
  NoiceCmdlineIconLua = {
    fg = "#58a6ff"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#FFAB70"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#58a6ff"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#FFAB70"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#58a6ff"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#e1e7ed"
  },
  NonText = {
    fg = "#545c7e"
  },
  Normal = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NormalFloat = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  NormalNC = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NormalSB = {
    bg = "#1f2428",
    fg = "#e1e7ed"
  },
  NotifyBackground = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NotifyDEBUGBody = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NotifyDEBUGBorder = {
    bg = "#24292e",
    fg = "#434950"
  },
  NotifyDEBUGIcon = {
    fg = "#8b949e"
  },
  NotifyDEBUGTitle = {
    fg = "#8b949e"
  },
  NotifyERRORBody = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NotifyERRORBorder = {
    bg = "#24292e",
    fg = "#5b2d2f"
  },
  NotifyERRORIcon = {
    fg = "#da3633"
  },
  NotifyERRORTitle = {
    fg = "#da3633"
  },
  NotifyINFOBody = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NotifyINFOBorder = {
    bg = "#24292e",
    fg = "#3e566d"
  },
  NotifyINFOIcon = {
    fg = "#79c0ff"
  },
  NotifyINFOTitle = {
    fg = "#79c0ff"
  },
  NotifyTRACEBody = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NotifyTRACEBorder = {
    bg = "#24292e",
    fg = "#4f4968"
  },
  NotifyTRACEIcon = {
    fg = "#B392F0"
  },
  NotifyTRACETitle = {
    fg = "#B392F0"
  },
  NotifyWARNBody = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  NotifyWARNBorder = {
    bg = "#24292e",
    fg = "#665042"
  },
  NotifyWARNIcon = {
    fg = "#FFAB70"
  },
  NotifyWARNTitle = {
    fg = "#FFAB70"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#388bfd"
  },
  NvimTreeGitDeleted = {
    fg = "#914c54"
  },
  NvimTreeGitDirty = {
    fg = "#6183bb"
  },
  NvimTreeGitNew = {
    fg = "#449dab"
  },
  NvimTreeImageFile = {
    fg = "#e1e7ed"
  },
  NvimTreeIndentMarker = {
    fg = "#6e7681"
  },
  NvimTreeNormal = {
    bg = "#1f2428",
    fg = "#e1e7ed"
  },
  NvimTreeNormalNC = {
    bg = "#1f2428",
    fg = "#e1e7ed"
  },
  NvimTreeOpenedFile = {
    bg = "#343b42"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#388bfd"
  },
  NvimTreeSpecialFile = {
    fg = "#B392F0",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#388bfd"
  },
  NvimTreeWinSeparator = {
    bg = "#1f2428",
    fg = "#1f2428"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#58a6ff"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#f0883e"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#B392F0"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#333442",
    fg = "#bb9af7"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#58a6ff"
  },
  Pmenu = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  PmenuMatch = {
    bg = "#1f2428",
    fg = "#58a6ff"
  },
  PmenuMatchSel = {
    bg = "#5f6770",
    fg = "#58a6ff"
  },
  PmenuSbar = {
    bg = "#292e32"
  },
  PmenuSel = {
    bg = "#5f6770"
  },
  PmenuThumb = {
    bg = "#6e7681"
  },
  Question = {
    fg = "#388bfd"
  },
  QuickFixLine = {
    bg = "#2e3c5c",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#FFAB70"
  },
  RainbowDelimiterCyan = {
    fg = "#388bfd"
  },
  RainbowDelimiterGreen = {
    fg = "#388bfd"
  },
  RainbowDelimiterOrange = {
    fg = "#FFAB70"
  },
  RainbowDelimiterRed = {
    fg = "#388bfd"
  },
  RainbowDelimiterViolet = {
    fg = "#B392F0"
  },
  RainbowDelimiterYellow = {
    fg = "#B392F0"
  },
  ReferencesCount = {
    fg = "#B392F0"
  },
  ReferencesIcon = {
    fg = "#388bfd"
  },
  RenderMarkdownBullet = {
    fg = "#f0883e"
  },
  RenderMarkdownCode = {
    bg = "#1f2428"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#f0883e"
  },
  RenderMarkdownH1Bg = {
    bg = "#263343"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#388bfd"
  },
  RenderMarkdownH2Bg = {
    bg = "#3a3635"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#FFAB70"
  },
  RenderMarkdownH3Bg = {
    bg = "#373d42"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#e6edf3"
  },
  RenderMarkdownH4Bg = {
    bg = "#233839"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#1abc9c"
  },
  RenderMarkdownH5Bg = {
    bg = "#333442"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#bb9af7"
  },
  RenderMarkdownH6Bg = {
    bg = "#323441"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#B392F0"
  },
  RenderMarkdownH7Bg = {
    bg = "#383330"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#f0883e"
  },
  RenderMarkdownH8Bg = {
    bg = "#3a3135"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff7b72"
  },
  RenderMarkdownTableHead = {
    fg = "#ff7b72"
  },
  RenderMarkdownTableRow = {
    fg = "#f0883e"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#da3633"
  },
  ScrollbarErrorHandle = {
    bg = "#343b42",
    fg = "#da3633"
  },
  ScrollbarHandle = {
    bg = "#343b42",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  ScrollbarHintHandle = {
    bg = "#343b42",
    fg = "#1abc9c"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#79c0ff"
  },
  ScrollbarInfoHandle = {
    bg = "#343b42",
    fg = "#79c0ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#B392F0"
  },
  ScrollbarMiscHandle = {
    bg = "#343b42",
    fg = "#B392F0"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#f0883e"
  },
  ScrollbarSearchHandle = {
    bg = "#343b42",
    fg = "#f0883e"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#FFAB70"
  },
  ScrollbarWarnHandle = {
    bg = "#343b42",
    fg = "#FFAB70"
  },
  Search = {
    bg = "#3d59a1",
    fg = "#e6edf3"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#449dab"
  },
  SidekickSignChange = {
    fg = "#6183bb"
  },
  SidekickSignDelete = {
    fg = "#914c54"
  },
  SignColumn = {
    bg = "#24292e",
    fg = "#6e7681"
  },
  SignColumnSB = {
    bg = "#1f2428",
    fg = "#6e7681"
  },
  SnacksDashboardDesc = {
    fg = "#7dcfff"
  },
  SnacksDashboardDir = {
    fg = "#545c7e"
  },
  SnacksDashboardFooter = {
    fg = "#58a6ff"
  },
  SnacksDashboardHeader = {
    fg = "#388bfd"
  },
  SnacksDashboardIcon = {
    fg = "#58a6ff"
  },
  SnacksDashboardKey = {
    fg = "#f0883e"
  },
  SnacksDashboardSpecial = {
    fg = "#B392F0"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#58a6ff"
  },
  SnacksIndent = {
    fg = "#6e7681",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#388bfd",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#FFAB70",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#e6edf3",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#1abc9c",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#bb9af7",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#B392F0",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#f0883e",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff7b72",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#58a6ff",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#FFAB70"
  },
  SnacksInputIcon = {
    fg = "#58a6ff"
  },
  SnacksInputTitle = {
    fg = "#FFAB70"
  },
  SnacksNotifierBorderDebug = {
    bg = "#24292e",
    fg = "#4d545b"
  },
  SnacksNotifierBorderError = {
    bg = "#24292e",
    fg = "#6d2e30"
  },
  SnacksNotifierBorderInfo = {
    bg = "#24292e",
    fg = "#466582"
  },
  SnacksNotifierBorderTrace = {
    bg = "#24292e",
    fg = "#5d537c"
  },
  SnacksNotifierBorderWarn = {
    bg = "#24292e",
    fg = "#7c5d48"
  },
  SnacksNotifierDebug = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  SnacksNotifierError = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  SnacksNotifierIconDebug = {
    fg = "#8b949e"
  },
  SnacksNotifierIconError = {
    fg = "#da3633"
  },
  SnacksNotifierIconInfo = {
    fg = "#79c0ff"
  },
  SnacksNotifierIconTrace = {
    fg = "#B392F0"
  },
  SnacksNotifierIconWarn = {
    fg = "#FFAB70"
  },
  SnacksNotifierInfo = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  SnacksNotifierTitleDebug = {
    fg = "#8b949e"
  },
  SnacksNotifierTitleError = {
    fg = "#da3633"
  },
  SnacksNotifierTitleInfo = {
    fg = "#79c0ff"
  },
  SnacksNotifierTitleTrace = {
    fg = "#B392F0"
  },
  SnacksNotifierTitleWarn = {
    fg = "#FFAB70"
  },
  SnacksNotifierTrace = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  SnacksNotifierWarn = {
    bg = "#24292e",
    fg = "#e6edf3"
  },
  SnacksPickerBoxTitle = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  SnacksPickerInputBorder = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  SnacksPickerInputTitle = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  SnacksPickerPickWin = {
    bg = "#3d59a1",
    bold = true,
    fg = "#e6edf3"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ff007c",
    bold = true,
    fg = "#e6edf3"
  },
  SnacksPickerSelected = {
    fg = "#ff007c"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#293643",
    fg = "#58a6ff"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#262c35",
    fg = "#545c7e"
  },
  SnacksProfilerIconInfo = {
    bg = "#344f6d",
    fg = "#58a6ff"
  },
  SnacksProfilerIconTrace = {
    bg = "#2a3342",
    fg = "#545c7e"
  },
  SnacksZenIcon = {
    fg = "#B392F0"
  },
  Sneak = {
    bg = "#bb9af7",
    fg = "#343b42"
  },
  SneakScope = {
    bg = "#2e3c5c"
  },
  SpecialKey = {
    fg = "#545c7e"
  },
  SpellBad = {
    sp = "#da3633",
    undercurl = true
  },
  SpellCap = {
    sp = "#FFAB70",
    undercurl = true
  },
  SpellLocal = {
    sp = "#79c0ff",
    undercurl = true
  },
  SpellRare = {
    sp = "#1abc9c",
    undercurl = true
  },
  Statement = {
    fg = "#ff7b72"
  },
  StatusLine = {
    bg = "#1f2428",
    fg = "#e1e7ed"
  },
  StatusLineNC = {
    bg = "#1f2428",
    fg = "#6e7681"
  },
  String = {
    fg = "#79b8ff"
  },
  Substitute = {
    bg = "#ff7b72",
    fg = "#1d2125"
  },
  SupermavenSuggestion = {
    fg = "#414868"
  },
  TabLine = {
    bg = "#1f2428",
    fg = "#6e7681"
  },
  TabLineFill = {
    bg = "#1d2125"
  },
  TabLineSel = {
    bg = "#388bfd",
    fg = "#1d2125"
  },
  TargetWord = {
    fg = "#7dcfff"
  },
  TelescopeBorder = {
    bg = "#1f2428",
    fg = "#4e8dd5"
  },
  TelescopeNormal = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  TelescopePromptBorder = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  TelescopePromptTitle = {
    bg = "#1f2428",
    fg = "#f0883e"
  },
  TelescopeResultsComment = {
    fg = "#545c7e"
  },
  Title = {
    bold = true,
    fg = "#388bfd"
  },
  TreesitterContext = {
    bg = "#27292e"
  },
  TroubleCount = {
    bg = "#6e7681",
    fg = "#bb9af7"
  },
  TroubleNormal = {
    bg = "#1f2428",
    fg = "#e6edf3"
  },
  TroubleText = {
    fg = "#e1e7ed"
  },
  Type = {
    fg = "#ff7b72"
  },
  VertSplit = {
    fg = "#1d2125"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#FFAB70"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#388bfd"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#FFAB70"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#e6edf3"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#1abc9c"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#bb9af7"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#B392F0"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#f0883e"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff7b72"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#FFAB70"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#388bfd"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#f0883e"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#388bfd"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  Visual = {
    bg = "#2e3c5c"
  },
  VisualNOS = {
    bg = "#2e3c5c"
  },
  WarningMsg = {
    fg = "#FFAB70"
  },
  WhichKey = {
    fg = "#7dcfff"
  },
  WhichKeyDesc = {
    fg = "#bb9af7"
  },
  WhichKeyGroup = {
    fg = "#388bfd"
  },
  WhichKeyNormal = {
    bg = "#1f2428"
  },
  WhichKeySeparator = {
    fg = "#8b949e"
  },
  WhichKeyValue = {
    fg = "#737aa2"
  },
  Whitespace = {
    fg = "#6e7681"
  },
  WildMenu = {
    bg = "#2e3c5c"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#1d2125"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  diffAdded = {
    bg = "#555a5f",
    fg = "#449dab"
  },
  diffChanged = {
    bg = "#272e38",
    fg = "#6183bb"
  },
  diffFile = {
    fg = "#388bfd"
  },
  diffIndexLine = {
    fg = "#bb9af7"
  },
  diffLine = {
    fg = "#8b949e"
  },
  diffNewFile = {
    bg = "#555a5f",
    fg = "#58a6ff"
  },
  diffOldFile = {
    bg = "#522c2f",
    fg = "#58a6ff"
  },
  diffRemoved = {
    bg = "#522c2f",
    fg = "#914c54"
  },
  healthError = {
    fg = "#da3633"
  },
  healthSuccess = {
    fg = "#e6edf3"
  },
  healthWarning = {
    fg = "#FFAB70"
  },
  helpExample = {
    fg = "#8b949e"
  },
  illuminatedCurWord = {
    bg = "#6e7681"
  },
  illuminatedWord = {
    bg = "#6e7681"
  },
  lCursor = {
    bg = "#e6edf3",
    fg = "#24292e"
  }
}
