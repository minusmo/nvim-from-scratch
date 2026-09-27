vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "windowsxp"

-- Windows XP Luna (Blue theme): the signature #316AC5 title-bar blue is the
-- hero keyword color. Start-button green for functions, Bliss-sky for strings,
-- XP silver for types, shutdown-dialog red for errors. Background is near-black
-- with a blue tint — like the XP titlebar gradient taken to extremes.
local c = {
    bg = "#0d0f1e",
    mantle = "#0f1220",
    crust = "#0a0c18",
    surface0 = "#151a2c",
    surface1 = "#465080",
    surface2 = "#1c2238",

    fg = "#d2dbed",            -- XP window-text blue-white
    subtext = "#b4c4dc",
    comment = "#526080",

    luna = "#4f84d8",          -- Luna title-bar blue (keyword / hero)
    luna_bright = "#5e9aff",
    start = "#57b257",         -- Start button green (function)
    start_bright = "#64d864",
    bliss_sky = "#70b8e8",     -- Bliss sky (string)
    bliss_grass = "#78c050",   -- Bliss grass (string escape / raw)
    silver = "#a8b8d8",        -- XP Silver theme (type)
    silver_bright = "#ccd6ee",
    shutdown = "#d42828",      -- Shutdown dialog red (error)
    shutdown_bright = "#f04848",
    amber = "#e89e18",         -- Warning / balloon tip amber (number)
    taskbar = "#38b8cc",       -- Taskbar tray teal (operator)
    taskbar_dim = "#2898a8",
    purple = "#8848d0",        -- System purple / accessibility (constant)
    purple_bright = "#aa72f0",
    silver_dark = "#6878a8",   -- dim silver (label / preproc)
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.luna_bright, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.luna_bright })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.luna_bright, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

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

hl("Visual", { bg = "#1a2848" })
hl("VisualNOS", { bg = "#1a2848" })
hl("Search", { fg = c.bg, bg = c.luna_bright })
hl("IncSearch", { fg = c.bg, bg = c.bliss_sky, bold = true })
hl("MatchParen", { fg = c.taskbar, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.start_bright, bold = true })
hl("Title", { fg = c.luna_bright, bold = true })

-- Syntax
hl("Constant", { fg = c.purple })
hl("String", { fg = c.bliss_sky })
hl("Character", { fg = c.bliss_sky })
hl("Number", { fg = c.amber })
hl("Boolean", { fg = c.luna, bold = true })
hl("Float", { fg = c.amber })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.start })

hl("Statement", { fg = c.luna, bold = true })
hl("Conditional", { fg = c.luna, bold = true })
hl("Repeat", { fg = c.luna, bold = true })
hl("Label", { fg = c.silver_dark })
hl("Operator", { fg = c.taskbar })
hl("Keyword", { fg = c.luna, bold = true })
hl("Exception", { fg = c.shutdown, bold = true })

hl("PreProc", { fg = c.silver_dark })
hl("Include", { fg = c.start })
hl("Define", { fg = c.purple })
hl("Macro", { fg = c.purple })
hl("PreCondit", { fg = c.silver_dark })

hl("Type", { fg = c.silver })
hl("StorageClass", { fg = c.luna })
hl("Structure", { fg = c.start })
hl("Typedef", { fg = c.silver_bright })

hl("Special", { fg = c.taskbar_dim })
hl("SpecialChar", { fg = c.amber })
hl("Tag", { fg = c.luna_bright })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.shutdown })

hl("Underlined", { fg = c.bliss_sky, underline = true })
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
hl("@constant.builtin", { fg = c.luna_bright, bold = true })
hl("@module", { fg = c.start })
hl("@label", { fg = c.silver_dark })

hl("@string", { fg = c.bliss_sky })
hl("@string.escape", { fg = c.amber })
hl("@string.regex", { fg = c.purple_bright })

hl("@number", { fg = c.amber })
hl("@boolean", { fg = c.luna, bold = true })

hl("@type", { fg = c.silver })
hl("@type.builtin", { fg = c.silver_bright })
hl("@attribute", { fg = c.purple })
hl("@property", { fg = c.taskbar })

hl("@function", { fg = c.start })
hl("@function.builtin", { fg = c.start_bright })
hl("@function.method", { fg = c.start })
hl("@constructor", { fg = c.silver_bright })

hl("@keyword", { fg = c.luna, bold = true })
hl("@keyword.function", { fg = c.luna, bold = true })
hl("@keyword.return", { fg = c.shutdown, bold = true })
hl("@operator", { fg = c.taskbar })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.amber })

hl("@tag", { fg = c.luna_bright })
hl("@tag.attribute", { fg = c.start, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.luna_bright, bold = true })
hl("@markup.link", { fg = c.bliss_sky, underline = true })
hl("@markup.raw", { fg = c.bliss_grass })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.shutdown })
hl("DiagnosticWarn", { fg = c.amber })
hl("DiagnosticInfo", { fg = c.luna })
hl("DiagnosticHint", { fg = c.taskbar })
hl("DiagnosticOk", { fg = c.start })

hl("DiagnosticVirtualTextError", { fg = c.shutdown, bg = "#251010" })
hl("DiagnosticVirtualTextWarn", { fg = c.amber, bg = "#241a08" })
hl("DiagnosticVirtualTextInfo", { fg = c.luna, bg = "#0c1430" })
hl("DiagnosticVirtualTextHint", { fg = c.taskbar, bg = "#0a2028" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.shutdown })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.amber })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.luna })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.taskbar })

hl("LspReferenceText", { bg = c.surface0 })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.surface0, underline = true })
hl("LspSignatureActiveParameter", { fg = c.luna_bright, bold = true, underline = true })

-- Diff / Git
hl("DiffAdd", { fg = c.start, bg = "#0e2014" })
hl("DiffChange", { fg = c.luna, bg = "#0c1830" })
hl("DiffDelete", { fg = c.shutdown, bg = "#251010" })
hl("DiffText", { fg = c.amber, bg = "#221a08", bold = true })

hl("GitSignsAdd", { fg = c.start })
hl("GitSignsChange", { fg = c.luna })
hl("GitSignsDelete", { fg = c.shutdown })
