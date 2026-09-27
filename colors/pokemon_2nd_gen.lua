vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "pokemon_2nd_gen"

-- Gen II — Johto / Gold & Silver: warm sepia night, antique gold paired with
-- polished silver/steel, copper rust and olive moss. Metallic, cozy, dusk.
local c = {
    bg = "#191510",
    mantle = "#1a160f",
    crust = "#0d0b07",
    surface0 = "#221d14",
    surface1 = "#5c5240",
    surface2 = "#2c2619",

    fg = "#e0d7c2",
    subtext = "#ccc1a8",
    comment = "#7a6f56",

    gold = "#e0a92e",          -- antique gold (keyword / hero)
    gold_bright = "#f7c64a",
    silver = "#aab4c0",        -- polished steel (type — the cool contrast)
    silver_bright = "#cad4de",
    crystal = "#5aa6d6",       -- Crystal blue (function)
    crystal_bright = "#84c4ec",
    moss = "#9aa83f",          -- warm olive / moss (string)
    moss_bright = "#b9c75d",
    copper = "#c85f3a",        -- copper rust (error / exception)
    copper_bright = "#e07a55",
    ember = "#d6862e",         -- warm ember (number)
    brass = "#c8a76a",         -- brass (operator / punctuation)
    mauve = "#b07a9e",         -- Ecruteak ghost mauve (constant)
    mauve_bright = "#c897b4",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.gold, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.gold_bright })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.gold, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

hl("Folded", { fg = c.crystal, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.gold, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.gold, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#2c2310" })
hl("VisualNOS", { bg = "#2c2310" })
hl("Search", { fg = c.bg, bg = c.gold })
hl("IncSearch", { fg = c.bg, bg = c.gold_bright, bold = true })
hl("MatchParen", { fg = c.crystal_bright, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.moss_bright, bold = true })
hl("Title", { fg = c.gold, bold = true })

-- Syntax
hl("Constant", { fg = c.mauve })
hl("String", { fg = c.moss })
hl("Character", { fg = c.moss })
hl("Number", { fg = c.ember })
hl("Boolean", { fg = c.gold, bold = true })
hl("Float", { fg = c.ember })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.crystal })

hl("Statement", { fg = c.gold, bold = true })
hl("Conditional", { fg = c.gold, bold = true })
hl("Repeat", { fg = c.gold, bold = true })
hl("Label", { fg = c.ember })
hl("Operator", { fg = c.brass })
hl("Keyword", { fg = c.gold, bold = true })
hl("Exception", { fg = c.copper, bold = true })

hl("PreProc", { fg = c.ember })
hl("Include", { fg = c.crystal })
hl("Define", { fg = c.mauve })
hl("Macro", { fg = c.mauve })
hl("PreCondit", { fg = c.ember })

hl("Type", { fg = c.silver })
hl("StorageClass", { fg = c.gold })
hl("Structure", { fg = c.crystal })
hl("Typedef", { fg = c.silver_bright })

hl("Special", { fg = c.mauve_bright })
hl("SpecialChar", { fg = c.ember })
hl("Tag", { fg = c.gold })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.copper })

hl("Underlined", { fg = c.crystal_bright, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.copper_bright, bold = true })
hl("ErrorMsg", { fg = c.copper_bright, bold = true })
hl("WarningMsg", { fg = c.gold, bold = true })
hl("Todo", { fg = c.bg, bg = c.gold, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.copper, italic = true })
hl("@variable.parameter", { fg = c.subtext, italic = true })
hl("@variable.member", { fg = c.crystal_bright })

hl("@constant", { fg = c.mauve })
hl("@constant.builtin", { fg = c.gold, bold = true })
hl("@module", { fg = c.crystal })
hl("@label", { fg = c.ember })

hl("@string", { fg = c.moss })
hl("@string.escape", { fg = c.ember })
hl("@string.regex", { fg = c.mauve_bright })

hl("@number", { fg = c.ember })
hl("@boolean", { fg = c.gold, bold = true })

hl("@type", { fg = c.silver })
hl("@type.builtin", { fg = c.silver_bright })
hl("@attribute", { fg = c.mauve })
hl("@property", { fg = c.crystal_bright })

hl("@function", { fg = c.crystal })
hl("@function.builtin", { fg = c.crystal_bright })
hl("@function.method", { fg = c.crystal })
hl("@constructor", { fg = c.silver_bright })

hl("@keyword", { fg = c.gold, bold = true })
hl("@keyword.function", { fg = c.gold, bold = true })
hl("@keyword.return", { fg = c.copper, bold = true })
hl("@operator", { fg = c.brass })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.ember })

hl("@tag", { fg = c.gold })
hl("@tag.attribute", { fg = c.crystal, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.gold, bold = true })
hl("@markup.link", { fg = c.crystal_bright, underline = true })
hl("@markup.raw", { fg = c.moss })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.copper_bright })
hl("DiagnosticWarn", { fg = c.gold })
hl("DiagnosticInfo", { fg = c.crystal })
hl("DiagnosticHint", { fg = c.crystal_bright })
hl("DiagnosticOk", { fg = c.moss })

hl("DiagnosticVirtualTextError", { fg = c.copper, bg = "#251510" })
hl("DiagnosticVirtualTextWarn", { fg = c.gold, bg = "#241e0e" })
hl("DiagnosticVirtualTextInfo", { fg = c.crystal, bg = "#102028" })
hl("DiagnosticVirtualTextHint", { fg = c.crystal_bright, bg = "#13212a" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.copper })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.gold })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.crystal })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.crystal_bright })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.gold_bright, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.moss, bg = "#1c2010" })
hl("DiffChange", { fg = c.crystal, bg = "#10202a" })
hl("DiffDelete", { fg = c.copper, bg = "#251510" })
hl("DiffText", { fg = c.gold, bg = "#2a2410", bold = true })

hl("GitSignsAdd", { fg = c.moss })
hl("GitSignsChange", { fg = c.crystal })
hl("GitSignsDelete", { fg = c.copper })
