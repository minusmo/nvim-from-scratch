vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "pokemon_1st_gen"

-- Gen I — Kanto / Game Boy: clean cool near-black, saturated primary type
-- colors, Pikachu electric yellow as the hero. High contrast, bold primaries.
local c = {
    bg = "#0f1017",
    mantle = "#0f1018",
    crust = "#0a0b10",
    surface0 = "#15171f",
    surface1 = "#474b5c",
    surface2 = "#1f2230",

    fg = "#dfe1eb",
    subtext = "#c2c6d2",
    comment = "#565b6e",

    electric = "#efc02f",       -- Pikachu yellow (hero / keyword)
    electric_bright = "#ffe24a",
    blast_blue = "#5c9fe6",      -- electric blue (function)
    blast_bright = "#62b8ff",
    venu_green = "#3ec840",      -- grass green (string)
    venu_bright = "#67e266",
    char_red = "#ff4338",        -- Charizard / Red version (error, builtin)
    char_bright = "#ff6a55",
    flame_orange = "#ff8c1a",    -- Charmander flame (number)
    water_cyan = "#29d4d4",      -- water / ice (operator)
    psy_purple = "#b15cff",      -- psychic (type / constant)
    psy_bright = "#c989ff",
    clefairy_pink = "#ff6fae",   -- pink (special)
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.electric, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.electric_bright })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.electric, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

hl("Folded", { fg = c.blast_blue, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.electric, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.blast_blue, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#1d2438" })
hl("VisualNOS", { bg = "#1d2438" })
hl("Search", { fg = c.bg, bg = c.electric })
hl("IncSearch", { fg = c.bg, bg = c.electric_bright, bold = true })
hl("MatchParen", { fg = c.water_cyan, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.venu_green, bold = true })
hl("Title", { fg = c.electric, bold = true })

-- Syntax
hl("Constant", { fg = c.psy_purple })
hl("String", { fg = c.venu_green })
hl("Character", { fg = c.venu_green })
hl("Number", { fg = c.flame_orange })
hl("Boolean", { fg = c.electric, bold = true })
hl("Float", { fg = c.flame_orange })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.blast_blue })

hl("Statement", { fg = c.electric, bold = true })
hl("Conditional", { fg = c.electric, bold = true })
hl("Repeat", { fg = c.electric, bold = true })
hl("Label", { fg = c.flame_orange })
hl("Operator", { fg = c.water_cyan })
hl("Keyword", { fg = c.electric, bold = true })
hl("Exception", { fg = c.char_red, bold = true })

hl("PreProc", { fg = c.flame_orange })
hl("Include", { fg = c.blast_blue })
hl("Define", { fg = c.psy_purple })
hl("Macro", { fg = c.psy_purple })
hl("PreCondit", { fg = c.flame_orange })

hl("Type", { fg = c.psy_bright })
hl("StorageClass", { fg = c.psy_purple })
hl("Structure", { fg = c.blast_blue })
hl("Typedef", { fg = c.psy_bright })

hl("Special", { fg = c.clefairy_pink })
hl("SpecialChar", { fg = c.flame_orange })
hl("Tag", { fg = c.electric })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.char_red })

hl("Underlined", { fg = c.water_cyan, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.char_bright, bold = true })
hl("ErrorMsg", { fg = c.char_bright, bold = true })
hl("WarningMsg", { fg = c.electric, bold = true })
hl("Todo", { fg = c.bg, bg = c.electric, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.char_red, italic = true })
hl("@variable.parameter", { fg = c.subtext, italic = true })
hl("@variable.member", { fg = c.water_cyan })

hl("@constant", { fg = c.psy_purple })
hl("@constant.builtin", { fg = c.electric, bold = true })
hl("@module", { fg = c.blast_blue })
hl("@label", { fg = c.flame_orange })

hl("@string", { fg = c.venu_green })
hl("@string.escape", { fg = c.flame_orange })
hl("@string.regex", { fg = c.clefairy_pink })

hl("@number", { fg = c.flame_orange })
hl("@boolean", { fg = c.electric, bold = true })

hl("@type", { fg = c.psy_bright })
hl("@type.builtin", { fg = c.psy_purple })
hl("@attribute", { fg = c.clefairy_pink })
hl("@property", { fg = c.water_cyan })

hl("@function", { fg = c.blast_blue })
hl("@function.builtin", { fg = c.blast_bright })
hl("@function.method", { fg = c.blast_blue })
hl("@constructor", { fg = c.psy_bright })

hl("@keyword", { fg = c.electric, bold = true })
hl("@keyword.function", { fg = c.electric, bold = true })
hl("@keyword.return", { fg = c.char_red, bold = true })
hl("@operator", { fg = c.water_cyan })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.flame_orange })

hl("@tag", { fg = c.electric })
hl("@tag.attribute", { fg = c.blast_blue, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.electric, bold = true })
hl("@markup.link", { fg = c.water_cyan, underline = true })
hl("@markup.raw", { fg = c.venu_green })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.char_red })
hl("DiagnosticWarn", { fg = c.electric })
hl("DiagnosticInfo", { fg = c.blast_blue })
hl("DiagnosticHint", { fg = c.water_cyan })
hl("DiagnosticOk", { fg = c.venu_green })

hl("DiagnosticVirtualTextError", { fg = c.char_red, bg = "#26110f" })
hl("DiagnosticVirtualTextWarn", { fg = c.electric, bg = "#241f0a" })
hl("DiagnosticVirtualTextInfo", { fg = c.blast_blue, bg = "#0c1830" })
hl("DiagnosticVirtualTextHint", { fg = c.water_cyan, bg = "#0a2226" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.char_red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.electric })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blast_blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.water_cyan })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.electric_bright, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.venu_green, bg = "#0e2010" })
hl("DiffChange", { fg = c.blast_blue, bg = "#0c1830" })
hl("DiffDelete", { fg = c.char_red, bg = "#26110f" })
hl("DiffText", { fg = c.electric, bg = "#262006", bold = true })

hl("GitSignsAdd", { fg = c.venu_green })
hl("GitSignsChange", { fg = c.blast_blue })
hl("GitSignsDelete", { fg = c.char_red })
