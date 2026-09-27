-- ~/.config/nvim/colors/zeldadark.lua

vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "zeldadark"

local c = {
    bg = "#13161a",
    mantle = "#151a1e",
    crust = "#0f1114",
    surface0 = "#1b2228",
    surface1 = "#56606a",
    surface2 = "#29323a",

    fg = "#ddd7c4",
    subtext = "#c8c1af",
    comment = "#6e766c",

    triforce = "#d8b55b",
    triforce_bright = "#f0cf79",
    forest = "#6fa86a",
    forest_bright = "#8fcf88",
    sheikah = "#5fbfcb",
    sheikah_bright = "#8ee4f0",
    twilight = "#8c6fb4",
    twilight_bright = "#b197d8",
    danger = "#c35a52",
    danger_bright = "#e58a82",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.triforce, bg = c.mantle, bold = true })

hl("Cursor", { fg = c.bg, bg = c.sheikah_bright })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("ColorColumn", { bg = c.surface0 })

hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.triforce, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.triforce, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.sheikah, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#2b2333" })
hl("VisualNOS", { bg = "#2b2333" })
hl("Search", { fg = c.bg, bg = c.triforce })
hl("IncSearch", { fg = c.bg, bg = c.sheikah_bright, bold = true })
hl("MatchParen", { fg = c.triforce_bright, bold = true, underline = true })

hl("Folded", { fg = c.sheikah, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("Title", { fg = c.triforce, bold = true })
hl("Directory", { fg = c.forest, bold = true })
hl("Conceal", { fg = c.surface1 })
hl("Comment", { fg = c.comment, italic = true })

-- Syntax
hl("Constant", { fg = c.twilight })
hl("String", { fg = c.forest })
hl("Character", { fg = c.forest })
hl("Number", { fg = c.triforce })
hl("Boolean", { fg = c.triforce_bright, bold = true })
hl("Float", { fg = c.triforce })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.sheikah })

hl("Statement", { fg = c.triforce, bold = true })
hl("Conditional", { fg = c.triforce, bold = true })
hl("Repeat", { fg = c.triforce, bold = true })
hl("Label", { fg = c.twilight })
hl("Operator", { fg = c.sheikah })
hl("Keyword", { fg = c.triforce, bold = true })
hl("Exception", { fg = c.danger, bold = true })

hl("PreProc", { fg = c.twilight })
hl("Include", { fg = c.sheikah })
hl("Define", { fg = c.twilight })
hl("Macro", { fg = c.twilight })
hl("PreCondit", { fg = c.triforce })

hl("Type", { fg = c.forest_bright })
hl("StorageClass", { fg = c.twilight })
hl("Structure", { fg = c.forest })
hl("Typedef", { fg = c.forest_bright })

hl("Special", { fg = c.twilight_bright })
hl("SpecialChar", { fg = c.sheikah })
hl("Tag", { fg = c.triforce })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.danger })

hl("Underlined", { fg = c.sheikah, underline = true })
hl("Error", { fg = c.danger_bright, bold = true })
hl("ErrorMsg", { fg = c.danger_bright, bold = true })
hl("WarningMsg", { fg = c.triforce, bold = true })
hl("Todo", { fg = c.bg, bg = c.triforce, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.twilight, italic = true })
hl("@variable.parameter", { fg = c.subtext, italic = true })
hl("@variable.member", { fg = c.sheikah })

hl("@constant", { fg = c.twilight })
hl("@constant.builtin", { fg = c.triforce, bold = true })
hl("@module", { fg = c.sheikah })
hl("@label", { fg = c.twilight })

hl("@string", { fg = c.forest })
hl("@string.escape", { fg = c.sheikah_bright })
hl("@string.regex", { fg = c.twilight })

hl("@number", { fg = c.triforce })
hl("@boolean", { fg = c.triforce_bright, bold = true })

hl("@type", { fg = c.forest_bright })
hl("@type.builtin", { fg = c.forest })
hl("@attribute", { fg = c.twilight })
hl("@property", { fg = c.sheikah })

hl("@function", { fg = c.sheikah })
hl("@function.builtin", { fg = c.sheikah_bright })
hl("@function.method", { fg = c.sheikah })
hl("@constructor", { fg = c.forest_bright })

hl("@keyword", { fg = c.triforce, bold = true })
hl("@keyword.function", { fg = c.triforce, bold = true })
hl("@keyword.return", { fg = c.danger, bold = true })
hl("@operator", { fg = c.sheikah })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.twilight })

hl("@tag", { fg = c.triforce })
hl("@tag.attribute", { fg = c.sheikah, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.triforce, bold = true })
hl("@markup.link", { fg = c.sheikah, underline = true })
hl("@markup.raw", { fg = c.forest })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.danger })
hl("DiagnosticWarn", { fg = c.triforce })
hl("DiagnosticInfo", { fg = c.sheikah })
hl("DiagnosticHint", { fg = c.forest })
hl("DiagnosticOk", { fg = c.forest_bright })

hl("DiagnosticVirtualTextError", { fg = c.danger, bg = "#241616" })
hl("DiagnosticVirtualTextWarn", { fg = c.triforce, bg = "#2a2516" })
hl("DiagnosticVirtualTextInfo", { fg = c.sheikah, bg = "#14252a" })
hl("DiagnosticVirtualTextHint", { fg = c.forest, bg = "#182319" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.danger })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.triforce })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.sheikah })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.forest })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.triforce_bright, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.forest, bg = "#162119" })
hl("DiffChange", { fg = c.sheikah, bg = "#142127" })
hl("DiffDelete", { fg = c.danger, bg = "#241616" })
hl("DiffText", { fg = c.triforce, bg = "#332915", bold = true })

hl("GitSignsAdd", { fg = c.forest })
hl("GitSignsChange", { fg = c.sheikah })
hl("GitSignsDelete", { fg = c.danger })
