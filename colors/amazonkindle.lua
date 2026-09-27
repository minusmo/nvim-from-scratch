vim.o.termguicolors = true
vim.o.background = "light"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "amazonkindle"

-- Warm sepia: aged paper background, dark ink. No hue anywhere.
-- Hierarchy expressed through shade (6 warm brown values) and
-- typography (bold / italic / underline). Kindle Sepia mode aesthetic.
local c = {
    bg       = "#F7ECD5",
    mantle   = "#F0E2C4",
    crust    = "#E6D5B0",
    surface0 = "#EDE5CE", -- CursorLine — clearly distinct from bg
    surface1 = "#C8B898", -- LineNr, inactive chrome
    surface2 = "#D8CAAA",

    fg       = "#1C1614", -- main text
    subtext  = "#3C2C1C",
    comment  = "#9A8060", -- warm sand — de-emphasised

    -- six named warm shades for syntax
    inkblack = "#100C06", -- darkest  → keyword
    inkdark  = "#1C1208", -- very dark → function, constant
    umber    = "#3A2510", -- dark      → type, number, member
    sienna   = "#5A3C1A", -- mid       → string, operator, preproc
    tan      = "#7A5A30", -- mid-light → special, label, dim
    sand     = "#9A7A50", -- light     → comment, conceal

    comet_bg = "#F9EDD8"
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.comet_bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.inkblack, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.inkblack })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.umber, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface1, bg = c.bg })
hl("WinSeparator", { fg = c.surface1, bg = c.bg })

hl("Folded", { fg = c.tan, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.inkblack, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.inkdark, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

-- inverted search: dark bg / warm fg — maximum pop without any hue
hl("Visual", { bg = "#DDD0B5" })
hl("VisualNOS", { bg = "#DDD0B5" })
hl("Search", { fg = c.bg, bg = c.inkblack, bold = true })
hl("IncSearch", { fg = c.bg, bg = c.umber, bold = true })
hl("MatchParen", { bold = true, underline = true })

hl("Comment", { fg = c.sand, italic = true })
hl("Conceal", { fg = c.tan })
hl("Directory", { fg = c.inkblack, bold = true })
hl("Title", { fg = c.inkblack, bold = true })

-- Syntax — shade + weight only, no hue
hl("Constant", { fg = c.inkdark, bold = true })
hl("String", { fg = c.sienna, italic = true })
hl("Character", { fg = c.sienna, italic = true })
hl("Number", { fg = c.umber })
hl("Boolean", { fg = c.inkblack, bold = true })
hl("Float", { fg = c.umber })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.inkdark, bold = true })

hl("Statement", { fg = c.inkblack, bold = true })
hl("Conditional", { fg = c.inkblack, bold = true })
hl("Repeat", { fg = c.inkblack, bold = true })
hl("Label", { fg = c.tan })
hl("Operator", { fg = c.sienna })
hl("Keyword", { fg = c.inkblack, bold = true })
hl("Exception", { fg = c.inkblack, bold = true, italic = true })

hl("PreProc", { fg = c.sienna })
hl("Include", { fg = c.umber, bold = true })
hl("Define", { fg = c.sienna })
hl("Macro", { fg = c.sienna })
hl("PreCondit", { fg = c.sienna })

hl("Type", { fg = c.umber, italic = true })
hl("StorageClass", { fg = c.inkblack })
hl("Structure", { fg = c.inkdark, italic = true })
hl("Typedef", { fg = c.umber, italic = true })

hl("Special", { fg = c.tan })
hl("SpecialChar", { fg = c.sienna })
hl("Tag", { fg = c.inkdark })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.sand, italic = true })
hl("Debug", { fg = c.inkblack, underline = true })

hl("Underlined", { fg = c.inkdark, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.inkblack, bold = true, underline = true })
hl("ErrorMsg", { fg = c.inkblack, bold = true, underline = true })
hl("WarningMsg", { fg = c.umber, bold = true })
hl("Todo", { fg = c.bg, bg = c.inkblack, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.umber, italic = true })
hl("@variable.parameter", { fg = c.sienna, italic = true })
hl("@variable.member", { fg = c.umber })

hl("@constant", { fg = c.inkdark, bold = true })
hl("@constant.builtin", { fg = c.inkblack, bold = true, italic = true })
hl("@module", { fg = c.inkdark, bold = true })
hl("@label", { fg = c.tan })

hl("@string", { fg = c.sienna, italic = true })
hl("@string.escape", { fg = c.umber })
hl("@string.regex", { fg = c.umber, italic = true })

hl("@number", { fg = c.umber })
hl("@boolean", { fg = c.inkblack, bold = true })

hl("@type", { fg = c.umber, italic = true })
hl("@type.builtin", { fg = c.inkdark, italic = true })
hl("@attribute", { fg = c.tan })
hl("@property", { fg = c.umber })

hl("@function", { fg = c.inkdark, bold = true, italic = true })
hl("@function.builtin", { fg = c.inkblack, bold = true })
hl("@function.method", { fg = c.inkdark, bold = true })
hl("@constructor", { fg = c.inkdark, bold = true, italic = true })

hl("@keyword", { fg = c.inkblack, bold = true })
hl("@keyword.function", { fg = c.inkblack, bold = true })
hl("@keyword.return", { fg = c.inkblack, bold = true, italic = true })
hl("@operator", { fg = c.sienna })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.sienna })

hl("@tag", { fg = c.inkdark })
hl("@tag.attribute", { fg = c.umber, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.inkblack, bold = true })
hl("@markup.link", { fg = c.inkdark, underline = true })
hl("@markup.raw", { fg = c.sienna, italic = true })

-- Diagnostics / LSP — severity shown by shade + style, no hue
hl("DiagnosticError", { fg = c.inkblack, bold = true })
hl("DiagnosticWarn", { fg = c.umber, bold = true })
hl("DiagnosticInfo", { fg = c.sienna })
hl("DiagnosticHint", { fg = c.tan })
hl("DiagnosticOk", { fg = c.sand })

hl("DiagnosticVirtualTextError", { fg = c.inkblack, bg = c.surface0, bold = true })
hl("DiagnosticVirtualTextWarn", { fg = c.umber, bg = c.surface0 })
hl("DiagnosticVirtualTextInfo", { fg = c.sienna, bg = c.surface0 })
hl("DiagnosticVirtualTextHint", { fg = c.tan, bg = c.surface0 })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.inkblack })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.umber })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.sienna })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.tan })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { bold = true, underline = true })

-- Diff / Git — shade bands only
hl("DiffAdd", { fg = c.inkdark, bg = "#E8DFC8" })
hl("DiffChange", { fg = c.umber, bg = "#EDE5CE" })
hl("DiffDelete", { fg = c.inkblack, bg = "#D8CAAA", bold = true })
hl("DiffText", { fg = c.inkblack, bg = "#D8CAAA", bold = true })

hl("GitSignsAdd", { fg = c.umber })
hl("GitSignsChange", { fg = c.sienna })
hl("GitSignsDelete", { fg = c.inkblack })
