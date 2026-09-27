vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "pokemon_3rd_gen"

-- Gen III — Hoenn / Ruby·Sapphire·Emerald: deep tropical sea. Emerald keywords
-- (no yellow here), sapphire functions, aqua operators, ruby & coral warm
-- accents, with pearl-gold reserved for gem-bright highlights.
local c = {
    bg = "#0b1c22",
    mantle = "#0a1d23",
    crust = "#081418",
    surface0 = "#0e242b",
    surface1 = "#3d5d66",
    surface2 = "#163139",

    fg = "#cfddd9",
    subtext = "#b6c9c8",
    comment = "#4f7077",

    emerald = "#1fc46b",         -- Emerald (keyword / hero)
    emerald_bright = "#54e094",
    sapphire = "#5192dd",        -- Sapphire (function)
    sapphire_bright = "#62a9ff",
    aqua = "#4ac9bf",            -- tropical water (operator)
    aqua_bright = "#5fe6dc",
    sea_green = "#5cc99a",       -- sea-glass (string)
    ruby = "#ec3454",           -- Ruby (error / exception)
    ruby_bright = "#ff5e74",
    coral = "#ff7a4d",          -- coral reef (number)
    coral_bright = "#ff9670",
    violet = "#9b6cff",         -- Deoxys psychic (type / constant)
    violet_bright = "#b78fff",
    pearl = "#e6c84a",          -- gem shine (search / cursor / heading accent)
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.pearl, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.pearl })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.pearl, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

hl("Folded", { fg = c.sapphire, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.emerald, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.sapphire, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#0f2a2e" })
hl("VisualNOS", { bg = "#0f2a2e" })
hl("Search", { fg = c.bg, bg = c.pearl })
hl("IncSearch", { fg = c.bg, bg = c.pearl, bold = true })
hl("MatchParen", { fg = c.aqua_bright, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.emerald_bright, bold = true })
hl("Title", { fg = c.emerald, bold = true })

-- Syntax
hl("Constant", { fg = c.violet })
hl("String", { fg = c.sea_green })
hl("Character", { fg = c.sea_green })
hl("Number", { fg = c.coral })
hl("Boolean", { fg = c.emerald, bold = true })
hl("Float", { fg = c.coral })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.sapphire })

hl("Statement", { fg = c.emerald, bold = true })
hl("Conditional", { fg = c.emerald, bold = true })
hl("Repeat", { fg = c.emerald, bold = true })
hl("Label", { fg = c.coral })
hl("Operator", { fg = c.aqua })
hl("Keyword", { fg = c.emerald, bold = true })
hl("Exception", { fg = c.ruby, bold = true })

hl("PreProc", { fg = c.coral })
hl("Include", { fg = c.sapphire })
hl("Define", { fg = c.violet })
hl("Macro", { fg = c.violet })
hl("PreCondit", { fg = c.coral })

hl("Type", { fg = c.violet_bright })
hl("StorageClass", { fg = c.violet })
hl("Structure", { fg = c.sapphire })
hl("Typedef", { fg = c.violet_bright })

hl("Special", { fg = c.coral_bright })
hl("SpecialChar", { fg = c.coral })
hl("Tag", { fg = c.emerald })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.ruby })

hl("Underlined", { fg = c.aqua, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.ruby_bright, bold = true })
hl("ErrorMsg", { fg = c.ruby_bright, bold = true })
hl("WarningMsg", { fg = c.pearl, bold = true })
hl("Todo", { fg = c.bg, bg = c.pearl, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.ruby, italic = true })
hl("@variable.parameter", { fg = c.subtext, italic = true })
hl("@variable.member", { fg = c.aqua })

hl("@constant", { fg = c.violet })
hl("@constant.builtin", { fg = c.emerald, bold = true })
hl("@module", { fg = c.sapphire })
hl("@label", { fg = c.coral })

hl("@string", { fg = c.sea_green })
hl("@string.escape", { fg = c.coral })
hl("@string.regex", { fg = c.coral_bright })

hl("@number", { fg = c.coral })
hl("@boolean", { fg = c.emerald, bold = true })

hl("@type", { fg = c.violet_bright })
hl("@type.builtin", { fg = c.violet })
hl("@attribute", { fg = c.aqua })
hl("@property", { fg = c.aqua })

hl("@function", { fg = c.sapphire })
hl("@function.builtin", { fg = c.sapphire_bright })
hl("@function.method", { fg = c.sapphire })
hl("@constructor", { fg = c.violet_bright })

hl("@keyword", { fg = c.emerald, bold = true })
hl("@keyword.function", { fg = c.emerald, bold = true })
hl("@keyword.return", { fg = c.ruby, bold = true })
hl("@operator", { fg = c.aqua })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.coral })

hl("@tag", { fg = c.emerald })
hl("@tag.attribute", { fg = c.sapphire, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.pearl, bold = true })
hl("@markup.link", { fg = c.aqua, underline = true })
hl("@markup.raw", { fg = c.sea_green })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.ruby })
hl("DiagnosticWarn", { fg = c.pearl })
hl("DiagnosticInfo", { fg = c.sapphire })
hl("DiagnosticHint", { fg = c.aqua })
hl("DiagnosticOk", { fg = c.emerald })

hl("DiagnosticVirtualTextError", { fg = c.ruby, bg = "#231016" })
hl("DiagnosticVirtualTextWarn", { fg = c.pearl, bg = "#20200c" })
hl("DiagnosticVirtualTextInfo", { fg = c.sapphire, bg = "#0a1c2c" })
hl("DiagnosticVirtualTextHint", { fg = c.aqua, bg = "#082226" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.ruby })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.pearl })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.sapphire })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.aqua })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.pearl, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.emerald, bg = "#0a2018" })
hl("DiffChange", { fg = c.sapphire, bg = "#0a1c2c" })
hl("DiffDelete", { fg = c.ruby, bg = "#231016" })
hl("DiffText", { fg = c.pearl, bg = "#20200c", bold = true })

hl("GitSignsAdd", { fg = c.emerald })
hl("GitSignsChange", { fg = c.sapphire })
hl("GitSignsDelete", { fg = c.ruby })
