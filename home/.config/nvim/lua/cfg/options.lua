local opt = vim.opt

opt.undofile = true
opt.swapfile = false
vim.opt.shadafile = "NONE"
vim.g.ts_highlight_lua = true
vim.g.ts_highlight_c = true
vim.g.ts_highlight_vim = true

opt.showmode = true
opt.number = true
opt.cursorline = true
opt.signcolumn = "auto:2"
opt.showtabline = 2
opt.showmatch = true

opt.expandtab = true
opt.shiftround = true
opt.shiftwidth = 0
opt.softtabstop = -1
opt.tabstop = 4

opt.foldenable = false

opt.splitbelow = true
opt.splitright = true

opt.linebreak = true
opt.breakindent = true
opt.textwidth = 80
opt.colorcolumn = "+1"
opt.formatoptions:remove("t")

opt.spelllang:append({ "pt_pt", "es_es" })
opt.spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"

opt.cmdheight = 2
opt.updatetime = 300

opt.shortmess:append({ a = true })

opt.gdefault = true
opt.synmaxcol = 500

opt.completeopt = { "menu", "menuone", "noselect" }
opt.scrolloff = 999
opt.sidescrolloff = 5

opt.clipboard = "unnamedplus"

opt.wildmode = { "longest", "full" }

opt.cpoptions:remove({ "_" })

opt.listchars = {
    tab = "> ",
    trail = "·",
    extends = ">",
    precedes = "<",
    nbsp = "+",
}
opt.list = true

opt.virtualedit = "block"
opt.spelloptions = "camel"

vim.g.is_posix = 1
vim.g.python_host_prog = 0
vim.g.python3_host_prog = 0
vim.g.netrw_home = vim.fn.stdpath("data")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1
vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_logipat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_spec = 1

opt.diffopt:append({
    ["indent-heuristic"] = true,
    hiddenoff = true,
    iblank = true,
    iwhiteall = true,
    algorithm = "histogram",
})

if vim.fn.executable("rg") then
  opt.grepprg = "rg\\ --vimgrep"
  opt.grepformat:append("f:%l:%c:%m")
end

opt.termguicolors = true
opt.pumblend = 20

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

opt.laststatus = 2
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.diagnostic.config({
    virtual_text = {
        source = "if_many",
        severity = vim.diagnostic.severity.ERROR,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
})
