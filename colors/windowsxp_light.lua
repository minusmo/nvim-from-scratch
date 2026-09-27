vim.o.termguicolors = true
vim.o.background = "light"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "windowsxp_light"

-- Windows XP Luna (Blue theme) — LIGHT: the iconic #ECE9D8 warm beige window
-- background. Colors are pushed to higher saturation so accents read clearly
-- on the tan canvas. Bold functions, italic strings/types for visual hierarchy.
local c = {
    bg = "#ece9d8",
    mantle = "#e0dcc8",
    crust = "#d0ccb8",
    surface0 = "#d4d0bc",      -- noticeably darker than bg for CursorLine
    surface1 = "#a8a494",
    surface2 = "#ccc8b4",

    fg = "#1a1810",
    subtext = "#3c3828",
    comment = "#8a8468",

    luna = "#1c4dbe",          -- vivid royal blue (keyword / hero)
    luna_bright = "#1860f8",
    start = "#0a7016",         -- rich forest green (function)
    start_bright = "#1a9424",
    bliss_sky = "#0c5ea0",     -- deep sky blue (string) — clearly distinct from luna
    bliss_grass = "#3a7c20",   -- grass green (raw / escape)
    silver = "#3c5480",        -- XP silver-blue (type)
    silver_bright = "#506898",
    shutdown = "#c81010",      -- shutdown red (error)
    shutdown_bright = "#e82828",
    amber = "#c07800",         -- vivid amber (number)
    taskbar = "#0c7080",       -- deep taskbar teal (operator)
    taskbar_dim = "#1e8898",
    purple = "#5c18b0",        -- vivid system purple (constant)
    purple_bright = "#7a38d0",
    silver_dark = "#5c6070",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.luna, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.luna })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.luna, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface1, bg = c.bg })
hl("WinSeparator", { fg = c.surface1, bg = c.bg })

hl("Folded", { fg = c.silver, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.luna, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.luna, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#a8c0ec" })          -- strong XP selection blue
hl("VisualNOS", { bg = "#a8c0ec" })
hl("Search", { fg = "#1a1400", bg = "#ecd646" })  -- vivid yellow, dark text
hl("IncSearch", { fg = c.bg, bg = c.luna, bold = true })
hl("MatchParen", { fg = c.taskbar, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.start, bold = true })
hl("Title", { fg = c.luna, bold = true })

-- Syntax
hl("Constant", { fg = c.purple })
hl("String", { fg = c.bliss_sky, italic = true })    -- italic for visual pop
hl("Character", { fg = c.bliss_sky, italic = true })
hl("Number", { fg = c.amber })
hl("Boolean", { fg = c.luna, bold = true })
hl("Float", { fg = c.amber })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.start, bold = true })        -- bold for prominence

hl("Statement", { fg = c.luna, bold = true })
hl("Conditional", { fg = c.luna, bold = true })
hl("Repeat", { fg = c.luna, bold = true })
hl("Label", { fg = c.silver_dark })
hl("Operator", { fg = c.taskbar })
hl("Keyword", { fg = c.luna, bold = true })
hl("Exception", { fg = c.shutdown, bold = true })

hl("PreProc", { fg = c.silver_dark })
hl("Include", { fg = c.start, bold = true })
hl("Define", { fg = c.purple })
hl("Macro", { fg = c.purple })
hl("PreCondit", { fg = c.silver_dark })

hl("Type", { fg = c.silver, italic = true })          -- italic to distinguish from identifiers
hl("StorageClass", { fg = c.luna })
hl("Structure", { fg = c.start })
hl("Typedef", { fg = c.silver_bright, italic = true })

hl("Special", { fg = c.taskbar_dim })
hl("SpecialChar", { fg = c.amber })
hl("Tag", { fg = c.luna })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.shutdown })

hl("Underlined", { fg = c.luna, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.shutdown_bright, bold = true })
hl("ErrorMsg", { fg = c.shutdown_bright, bold = true })
hl("WarningMsg", { fg = c.amber, bold = true })
hl("Todo", { fg = c.bg, bg = c.luna, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.shutdown, italic = true })
hl("@variable.parameter", { fg = c.subtext, italic = true })
hl("@variable.member", { fg = c.taskbar })

hl("@constant", { fg = c.purple })
hl("@constant.builtin", { fg = c.luna, bold = true })
hl("@module", { fg = c.start, bold = true })
hl("@label", { fg = c.silver_dark })

hl("@string", { fg = c.bliss_sky, italic = true })
hl("@string.escape", { fg = c.amber })
hl("@string.regex", { fg = c.purple_bright })

hl("@number", { fg = c.amber })
hl("@boolean", { fg = c.luna, bold = true })

hl("@type", { fg = c.silver, italic = true })
hl("@type.builtin", { fg = c.silver_bright, italic = true })
hl("@attribute", { fg = c.purple })
hl("@property", { fg = c.taskbar })

hl("@function", { fg = c.start, bold = true })
hl("@function.builtin", { fg = c.start_bright, bold = true })
hl("@function.method", { fg = c.start, bold = true })
hl("@constructor", { fg = c.silver, bold = true })

hl("@keyword", { fg = c.luna, bold = true })
hl("@keyword.function", { fg = c.luna, bold = true })
hl("@keyword.return", { fg = c.shutdown, bold = true })
hl("@operator", { fg = c.taskbar })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.amber })

hl("@tag", { fg = c.luna })
hl("@tag.attribute", { fg = c.start, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.luna, bold = true })
hl("@markup.link", { fg = c.bliss_sky, underline = true })
hl("@markup.raw", { fg = c.bliss_grass })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.shutdown })
hl("DiagnosticWarn", { fg = c.amber })
hl("DiagnosticInfo", { fg = c.luna })
hl("DiagnosticHint", { fg = c.taskbar })
hl("DiagnosticOk", { fg = c.start })

hl("DiagnosticVirtualTextError", { fg = c.shutdown, bg = "#eed8d4" })
hl("DiagnosticVirtualTextWarn", { fg = c.amber, bg = "#ede0c4" })
hl("DiagnosticVirtualTextInfo", { fg = c.luna, bg = "#ccdaf4" })
hl("DiagnosticVirtualTextHint", { fg = c.taskbar, bg = "#cce6ec" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.shutdown })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.amber })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.luna })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.taskbar })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.luna, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.start, bg = "#cce8cc" })
hl("DiffChange", { fg = c.luna, bg = "#ccdaf4" })
hl("DiffDelete", { fg = c.shutdown, bg = "#eed4d0" })
hl("DiffText", { fg = c.amber, bg = "#ede0b8", bold = true })

hl("GitSignsAdd", { fg = c.start })
hl("GitSignsChange", { fg = c.luna })
hl("GitSignsDelete", { fg = c.shutdown })
