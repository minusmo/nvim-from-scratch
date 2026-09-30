vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "smb3dark"

local c = {
    bg = "#131313",
    mantle = "#111317",
    crust = "#0a0a0a",
    surface0 = "#1b1f24",
    surface1 = "#5d6872",
    surface2 = "#2b323a",

    fg = "#e6ece4",
    subtext = "#c8d2c6",
    comment = "#6c766f",

    mario_red = "#db6658",
    mario_red_bright = "#ec796c",
    fire_orange = "#f28a1e",
    coin_yellow = "#fac547",
    pipe_green = "#4aa651",
    sky_blue = "#3988e3",
    magic_cyan = "#5fd0d4",
    enemy_magenta = "#ff5d6f",

    bright_red = "#febbb0",
    bright_green = "#8be78f",
    bright_blue = "#b3cffd",
    bright_cyan = "#38e9e9",
    bright_white = "#f8f8f8",

    ref_text = "#203b5a",
    ref_write = "#684017",
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Base UI
hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.subtext, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.mantle })
hl("FloatBorder", { fg = c.surface2, bg = c.mantle })
hl("FloatTitle", { fg = c.coin_yellow, bg = c.mantle, bold = true })

hl("ColorColumn", { bg = c.surface0 })
hl("Cursor", { fg = c.bg, bg = c.mario_red_bright })
hl("CursorLine", { bg = c.surface0 })
hl("CursorColumn", { bg = c.surface0 })
hl("LineNr", { fg = c.surface1 })
hl("CursorLineNr", { fg = c.coin_yellow, bold = true })

hl("SignColumn", { bg = c.bg })
hl("EndOfBuffer", { fg = c.bg })
hl("VertSplit", { fg = c.surface0, bg = c.bg })
hl("WinSeparator", { fg = c.surface2, bg = c.bg })

hl("Folded", { fg = c.sky_blue, bg = c.surface0, italic = true })
hl("FoldColumn", { fg = c.surface1, bg = c.bg })

hl("StatusLine", { fg = c.bright_white, bg = c.surface0 })
hl("StatusLineNC", { fg = c.surface1, bg = c.mantle })
hl("TabLine", { fg = c.surface1, bg = c.mantle })
hl("TabLineFill", { bg = c.crust })
hl("TabLineSel", { fg = c.bg, bg = c.coin_yellow, bold = true })

hl("Pmenu", { fg = c.fg, bg = c.mantle })
hl("PmenuSel", { fg = c.bg, bg = c.fire_orange, bold = true })
hl("PmenuSbar", { bg = c.surface0 })
hl("PmenuThumb", { bg = c.surface2 })

hl("Visual", { bg = "#4c2730" })
hl("VisualNOS", { bg = "#4c2730" })
hl("Search", { fg = c.bg, bg = c.coin_yellow })
hl("IncSearch", { fg = c.bg, bg = c.fire_orange, bold = true })
hl("MatchParen", { fg = c.magic_cyan, bold = true, underline = true })

hl("Comment", { fg = c.comment, italic = true })
hl("Conceal", { fg = c.surface1 })
hl("Directory", { fg = c.sky_blue, bold = true })
hl("Title", { fg = c.coin_yellow, bold = true })

-- Syntax
hl("Constant", { fg = c.enemy_magenta })
hl("String", { fg = c.pipe_green })
hl("Character", { fg = c.pipe_green })
hl("Number", { fg = c.fire_orange })
hl("Boolean", { fg = c.coin_yellow, bold = true })
hl("Float", { fg = c.fire_orange })

hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.sky_blue })

hl("Statement", { fg = c.mario_red_bright, bold = true })
hl("Conditional", { fg = c.mario_red_bright, bold = true })
hl("Repeat", { fg = c.mario_red_bright, bold = true })
hl("Label", { fg = c.fire_orange })
hl("Operator", { fg = c.magic_cyan })
hl("Keyword", { fg = c.mario_red_bright, bold = true })
hl("Exception", { fg = c.enemy_magenta, bold = true })

hl("PreProc", { fg = c.fire_orange })
hl("Include", { fg = c.sky_blue })
hl("Define", { fg = c.enemy_magenta })
hl("Macro", { fg = c.enemy_magenta })
hl("PreCondit", { fg = c.fire_orange })

hl("Type", { fg = c.coin_yellow })
hl("StorageClass", { fg = c.fire_orange })
hl("Structure", { fg = c.sky_blue })
hl("Typedef", { fg = c.coin_yellow })

hl("Special", { fg = c.enemy_magenta })
hl("SpecialChar", { fg = c.fire_orange })
hl("Tag", { fg = c.mario_red_bright })
hl("Delimiter", { fg = c.subtext })
hl("SpecialComment", { fg = c.comment, italic = true })
hl("Debug", { fg = c.mario_red })

hl("Underlined", { fg = c.magic_cyan, underline = true })
hl("Bold", { bold = true })
hl("Italic", { italic = true })

hl("Error", { fg = c.bright_red, bold = true })
hl("ErrorMsg", { fg = c.bright_red, bold = true })
hl("WarningMsg", { fg = c.coin_yellow, bold = true })
hl("Todo", { fg = c.bg, bg = c.coin_yellow, bold = true })

-- Treesitter
hl("@variable", { fg = c.fg })
hl("@variable.builtin", { fg = c.mario_red, italic = true })
hl("@variable.parameter", { fg = "#e6b95c", italic = true })
hl("@variable.member", { fg = c.magic_cyan })

hl("@constant", { fg = c.enemy_magenta })
hl("@constant.builtin", { fg = c.mario_red_bright, bold = true })
hl("@module", { fg = c.sky_blue })
hl("@label", { fg = c.fire_orange })

hl("@string", { fg = c.pipe_green })
hl("@string.escape", { fg = c.fire_orange })
hl("@string.regex", { fg = c.enemy_magenta })

hl("@number", { fg = c.fire_orange })
hl("@boolean", { fg = c.coin_yellow, bold = true })

hl("@type", { fg = c.coin_yellow })
hl("@type.builtin", { fg = c.fire_orange })
hl("@attribute", { fg = c.enemy_magenta })
hl("@property", { fg = c.magic_cyan })

hl("@function", { fg = c.sky_blue })
hl("@function.builtin", { fg = c.mario_red_bright })
hl("@function.method", { fg = c.sky_blue })
hl("@constructor", { fg = c.coin_yellow })

hl("@keyword", { fg = c.mario_red_bright, bold = true })
hl("@keyword.function", { fg = c.mario_red_bright, bold = true })
hl("@keyword.return", { fg = c.enemy_magenta, bold = true })
hl("@operator", { fg = c.magic_cyan })

hl("@punctuation.delimiter", { fg = c.subtext })
hl("@punctuation.bracket", { fg = c.subtext })
hl("@punctuation.special", { fg = c.fire_orange })

hl("@tag", { fg = c.mario_red_bright })
hl("@tag.attribute", { fg = c.sky_blue, italic = true })
hl("@tag.delimiter", { fg = c.subtext })

hl("@markup.heading", { fg = c.coin_yellow, bold = true })
hl("@markup.link", { fg = c.magic_cyan, underline = true })
hl("@markup.raw", { fg = c.pipe_green })

-- Diagnostics / LSP
hl("DiagnosticError", { fg = c.mario_red })
hl("DiagnosticWarn", { fg = c.coin_yellow })
hl("DiagnosticInfo", { fg = c.sky_blue })
hl("DiagnosticHint", { fg = c.magic_cyan })
hl("DiagnosticOk", { fg = c.pipe_green })

hl("DiagnosticVirtualTextError", { fg = c.mario_red, bg = "#2a1616" })
hl("DiagnosticVirtualTextWarn", { fg = c.coin_yellow, bg = "#2f2614" })
hl("DiagnosticVirtualTextInfo", { fg = c.sky_blue, bg = "#162334" })
hl("DiagnosticVirtualTextHint", { fg = c.magic_cyan, bg = "#132a2b" })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.mario_red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.coin_yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.sky_blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.magic_cyan })

hl("LspReferenceText", { bg = c.ref_text })
hl("LspReferenceRead", { bg = c.surface0 })
hl("LspReferenceWrite", { bg = c.ref_write, underline = true, sp = c.fire_orange })
hl("LspSignatureActiveParameter", { fg = c.fire_orange, bg = c.surface2, bold = true, underline = true, sp = c.fire_orange })

-- Diff / Git
hl("DiffAdd", { fg = c.pipe_green, bg = "#132516" })
hl("DiffChange", { fg = c.sky_blue, bg = "#132033" })
hl("DiffDelete", { fg = c.mario_red, bg = "#2a1616" })
hl("DiffText", { fg = c.coin_yellow, bg = "#3a2b12", bold = true })

hl("GitSignsAdd", { fg = c.pipe_green })
hl("GitSignsChange", { fg = c.sky_blue })
hl("GitSignsDelete", { fg = c.mario_red })
