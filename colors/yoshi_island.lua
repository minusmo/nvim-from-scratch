vim.o.termguicolors = true
vim.o.background = "light"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "yoshi_island"

-- Yoshi's Island — SNES crayon / watercolor storybook. A LIGHT theme: warm
-- cream paper, hand-drawn crayon colors. Grape-purple keywords, sky-blue
-- functions, Yoshi-green strings, sunflower highlights.
local c = {
    bg = "#f4efe1",            -- cream paper
    mantle = "#ece3d0",
    crust = "#dccfb4",
    surface0 = "#e8dec9",
    surface1 = "#b4a988",
    surface2 = "#d7cbb0",

    fg = "#3a3326",            -- warm brown ink
    subtext = "#5c5340",
    comment = "#9c9178",

    grape = "#7541ac",         -- crayon purple (keyword / hero)
    grape_deep = "#5f2aa0",
    sky = "#3a6cbe",           -- crayon sky blue (function)
    sky_deep = "#1f54aa",
    yoshi = "#2f9440",         -- Yoshi green (string)
    yoshi_deep = "#1f7a30",
    crayon_red = "#d23b3b",    -- crayon red (boolean / error)
    crayon_red_deep = "#b02525",
    tangerine = "#d9761a",     -- crayon orange (number)
    teal = "#1f8f8f",          -- crayon teal (operator / type)
    teal_deep = "#157070",
    flower_pink = "#d84f8f",   -- crayon pink (special)
    sunflower = "#f3c91e",     -- sunflower (highlight backgrounds)
    amber_deep = "#a86c12",    -- readable amber (warnings on light bg)
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.grape, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.grape })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.grape, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface2, bg = c.bg })
hl("WinSeparator", { fg = c.surface1, bg = c.bg })

hl("Folded", { fg = c.sky_deep, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.surface2 })
hl("StatusLineNC", { fg = c.subtext, bg = c.mantle })
hl("TabLine", { fg = c.subtext, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.yoshi, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.sky, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#dbe7c4" })
hl("VisualNOS", { bg = "#dbe7c4" })
hl("Search", { fg = c.fg, bg = c.sunflower })
hl("IncSearch", { fg = c.bg, bg = c.tangerine, bold = true })
hl("MatchParen", { fg = c.teal, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.yoshi_deep, bold = true })
hl("Title", { fg = c.grape, bold = true })

-- Syntax
hl("Constant", { fg = c.grape })
hl("String", { fg = c.yoshi })
hl("Character", { fg = c.yoshi })
hl("Number", { fg = c.tangerine })
hl("Boolean", { fg = c.crayon_red, bold = true })
hl("Float", { fg = c.tangerine })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.sky })

hl("Statement", { fg = c.grape, bold = true })
hl("Conditional", { fg = c.grape, bold = true })
hl("Repeat", { fg = c.grape, bold = true })
hl("Label", { fg = c.tangerine })
hl("Operator", { fg = c.teal })
hl("Keyword", { fg = c.grape, bold = true })
hl("Exception", { fg = c.crayon_red_deep, bold = true })

hl("PreProc", { fg = c.tangerine })
hl("Include", { fg = c.sky })
hl("Define", { fg = c.grape })
hl("Macro", { fg = c.grape })
hl("PreCondit", { fg = c.tangerine })

hl("Type", { fg = c.teal_deep })
hl("StorageClass", { fg = c.grape_deep })
hl("Structure", { fg = c.sky })
hl("Typedef", { fg = c.teal_deep })

hl("Special", { fg = c.flower_pink })
hl("SpecialChar", { fg = c.tangerine })
hl("Tag", { fg = c.grape })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.crayon_red })

hl("Underlined", { fg = c.teal, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.crayon_red_deep, bold = true })
hl("ErrorMsg", { fg = c.crayon_red_deep, bold = true })
hl("WarningMsg", { fg = c.amber_deep, bold = true })
hl("Todo", { fg = c.bg, bg = c.sunflower, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.crayon_red_deep, italic = true })
hl("@variable.parameter", { fg = c.subtext, italic = true })
hl("@variable.member", { fg = c.teal })

hl("@constant", { fg = c.grape })
hl("@constant.builtin", { fg = c.crayon_red, bold = true })
hl("@module", { fg = c.sky })
hl("@label", { fg = c.tangerine })

hl("@string", { fg = c.yoshi })
hl("@string.escape", { fg = c.tangerine })
hl("@string.regex", { fg = c.flower_pink })

hl("@number", { fg = c.tangerine })
hl("@boolean", { fg = c.crayon_red, bold = true })

hl("@type", { fg = c.teal_deep })
hl("@type.builtin", { fg = c.grape_deep })
hl("@attribute", { fg = c.flower_pink })
hl("@property", { fg = c.teal })

hl("@function", { fg = c.sky })
hl("@function.builtin", { fg = c.sky_deep })
hl("@function.method", { fg = c.sky })
hl("@constructor", { fg = c.teal_deep })

hl("@keyword", { fg = c.grape, bold = true })
hl("@keyword.function", { fg = c.grape, bold = true })
hl("@keyword.return", { fg = c.crayon_red_deep, bold = true })
hl("@operator", { fg = c.teal })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.tangerine })

hl("@tag", { fg = c.grape })
hl("@tag.attribute", { fg = c.sky, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.grape, bold = true })
hl("@markup.link", { fg = c.teal, underline = true })
hl("@markup.raw", { fg = c.yoshi })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.crayon_red_deep })
hl("DiagnosticWarn", { fg = c.amber_deep })
hl("DiagnosticInfo", { fg = c.sky_deep })
hl("DiagnosticHint", { fg = c.teal_deep })
hl("DiagnosticOk", { fg = c.yoshi_deep })

hl("DiagnosticVirtualTextError", { fg = c.crayon_red_deep, bg = "#f3dcd6" })
hl("DiagnosticVirtualTextWarn", { fg = c.amber_deep, bg = "#f3e8cc" })
hl("DiagnosticVirtualTextInfo", { fg = c.sky_deep, bg = "#dae6f4" })
hl("DiagnosticVirtualTextHint", { fg = c.teal_deep, bg = "#d4ecec" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.crayon_red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.tangerine })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.sky })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.teal })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.grape_deep, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.yoshi_deep, bg = "#d9ecc6" })
hl("DiffChange", { fg = c.sky_deep, bg = "#d6e4f4" })
hl("DiffDelete", { fg = c.crayon_red_deep, bg = "#f3d8d2" })
hl("DiffText", { fg = c.amber_deep, bg = "#f1e6c2", bold = true })

hl("GitSignsAdd", { fg = c.yoshi })
hl("GitSignsChange", { fg = c.sky })
hl("GitSignsDelete", { fg = c.crayon_red })
