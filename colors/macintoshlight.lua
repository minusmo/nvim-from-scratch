vim.o.termguicolors = true
vim.o.background = "light"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "macintoshlight"

local c = {
    bg = "#e8e4de",
    mantle = "#dcd8d2",
    crust = "#f0ece6",
    surface0 = "#ccc8c2",
    surface1 = "#8c8882",
    surface2 = "#b8b4ae",

    fg = "#1a1614",
    subtext = "#484440",
    comment = "#7c7874",

    -- Finder label colors (System 7)
    mac_red = "#cc2222",
    mac_red_bright = "#c83a34",
    mac_orange = "#c86000",
    mac_yellow = "#9a7a00",
    mac_green = "#1a7a1a",
    mac_blue = "#2b4bb0",
    mac_cyan = "#007aaa",
    mac_purple = "#882299",

    bright_red = "#991111",
    bright_green = "#0f5c0f",
    bright_blue = "#1038a0",
    bright_cyan = "#006688",
    bright_white = "#1a1614",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.mac_blue, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.mac_blue })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.mac_blue, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

hl("Folded", { fg = c.mac_blue, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.bright_white, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.crust, bg = c.mac_blue, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.crust, bg = c.mac_blue, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#b0c8ee" })
hl("VisualNOS", { bg = "#b0c8ee" })
hl("Search", { fg = c.crust, bg = c.mac_blue })
hl("IncSearch", { fg = c.crust, bg = c.mac_purple, bold = true })
hl("MatchParen", { fg = c.mac_purple, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.mac_blue, bold = true })
hl("Title", { fg = c.mac_blue, bold = true })

-- Syntax
hl("Constant", { fg = c.mac_purple })
hl("String", { fg = c.mac_green })
hl("Character", { fg = c.mac_green })
hl("Number", { fg = c.mac_orange })
hl("Boolean", { fg = c.mac_blue, bold = true })
hl("Float", { fg = c.mac_orange })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.mac_blue })

hl("Statement", { fg = c.mac_red_bright, bold = true })
hl("Conditional", { fg = c.mac_red_bright, bold = true })
hl("Repeat", { fg = c.mac_red_bright, bold = true })
hl("Label", { fg = c.mac_orange })
hl("Operator", { fg = c.mac_cyan })
hl("Keyword", { fg = c.mac_red_bright, bold = true })
hl("Exception", { fg = c.mac_purple, bold = true })

hl("PreProc", { fg = c.mac_orange })
hl("Include", { fg = c.mac_blue })
hl("Define", { fg = c.mac_purple })
hl("Macro", { fg = c.mac_purple })
hl("PreCondit", { fg = c.mac_orange })

hl("Type", { fg = c.mac_yellow })
hl("StorageClass", { fg = c.mac_orange })
hl("Structure", { fg = c.mac_blue })
hl("Typedef", { fg = c.mac_yellow })

hl("Special", { fg = c.mac_purple })
hl("SpecialChar", { fg = c.mac_orange })
hl("Tag", { fg = c.mac_red_bright })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.mac_red })

hl("Underlined", { fg = c.mac_cyan, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.bright_red, bold = true })
hl("ErrorMsg", { fg = c.bright_red, bold = true })
hl("WarningMsg", { fg = c.mac_yellow, bold = true })
hl("Todo", { fg = c.crust, bg = c.mac_blue, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.mac_red, italic = true })
hl("@variable.parameter", { fg = "#8a5c10", italic = true })
hl("@variable.member", { fg = c.mac_cyan })

hl("@constant", { fg = c.mac_purple })
hl("@constant.builtin", { fg = c.mac_red_bright, bold = true })
hl("@module", { fg = c.mac_blue })
hl("@label", { fg = c.mac_orange })

hl("@string", { fg = c.mac_green })
hl("@string.escape", { fg = c.mac_orange })
hl("@string.regex", { fg = c.mac_purple })

hl("@number", { fg = c.mac_orange })
hl("@boolean", { fg = c.mac_blue, bold = true })

hl("@type", { fg = c.mac_yellow })
hl("@type.builtin", { fg = c.mac_orange })
hl("@attribute", { fg = c.mac_purple })
hl("@property", { fg = c.mac_cyan })

hl("@function", { fg = c.mac_blue })
hl("@function.builtin", { fg = c.mac_red_bright })
hl("@function.method", { fg = c.mac_blue })
hl("@constructor", { fg = c.mac_yellow })

hl("@keyword", { fg = c.mac_red_bright, bold = true })
hl("@keyword.function", { fg = c.mac_red_bright, bold = true })
hl("@keyword.return", { fg = c.mac_purple, bold = true })
hl("@operator", { fg = c.mac_cyan })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.mac_orange })

hl("@tag", { fg = c.mac_red_bright })
hl("@tag.attribute", { fg = c.mac_blue, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.mac_blue, bold = true })
hl("@markup.link", { fg = c.mac_cyan, underline = true })
hl("@markup.raw", { fg = c.mac_green })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.mac_red })
hl("DiagnosticWarn", { fg = c.mac_yellow })
hl("DiagnosticInfo", { fg = c.mac_blue })
hl("DiagnosticHint", { fg = c.mac_cyan })
hl("DiagnosticOk", { fg = c.mac_green })

hl("DiagnosticVirtualTextError", { fg = c.mac_red, bg = "#f0dede" })
hl("DiagnosticVirtualTextWarn", { fg = c.mac_yellow, bg = "#ece8d0" })
hl("DiagnosticVirtualTextInfo", { fg = c.mac_blue, bg = "#d8e4f4" })
hl("DiagnosticVirtualTextHint", { fg = c.mac_cyan, bg = "#d4e8ee" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.mac_red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.mac_yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.mac_blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.mac_cyan })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.mac_orange, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.mac_green, bg = "#d4ecd6" })
hl("DiffChange", { fg = c.mac_blue, bg = "#d4e0f4" })
hl("DiffDelete", { fg = c.mac_red, bg = "#f0dede" })
hl("DiffText", { fg = c.mac_yellow, bg = "#ece8d0", bold = true })

hl("GitSignsAdd", { fg = c.mac_green })
hl("GitSignsChange", { fg = c.mac_blue })
hl("GitSignsDelete", { fg = c.mac_red })
