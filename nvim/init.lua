
-- Set options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = "a"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Key mappings
vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-q>", ":q<CR>")
vim.keymap.set("n", "<C-x>", ":wq<CR>")
vim.keymap.set("n", "<leader>ev", ":e $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sc", ":source $MYVIMRC<CR>")


vim.opt.splitbelow = true -- Make splits default to below
vim.opt.splitright = true -- And to the right

-- Search Settings
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Command Mappings
vim.api.nvim_create_user_command("Q", "q", {})

-- Key Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Make it easy to edit the Vimrc file
map("n", "<Leader>e", ":tabedit ", opts)
map("n", "<Leader>sc", ":so $MYVIMRC<CR>", opts)
map("n", "mt", ":tabedit ~/todo<CR>", opts)

map("n", "<Leader>e", ":tabedit ", opts)


-- Navigation and Buffer Management
map("n", "<Leader>a", "0w", opts)
map("n", "<Leader>s", ":w<CR>", opts)
map("n", "<Leader>b", ":buffers<CR>", opts)
map("n", "<Leader>1", ":tabn 1<CR>", opts)
map("n", "<Leader>2", ":tabn 2<CR>", opts)
map("n", "<Leader>3", ":tabn 3<CR>", opts)
map("n", "<Leader>4", ":tabn 4<CR>", opts)
map("n", "<Leader>5", ":tabn 5<CR>", opts)
map("n", "<Leader>6", ":tabn 6<CR>", opts)
map("n", "<Leader>7", ":tabn 7<CR>", opts)
map("n", "<Leader>8", ":tabn 8<CR>", opts)
map("n", "<Leader>9", ":tabn 9<CR>", opts)
map("n", "<Leader>0", ":tablast<CR>", opts)
map("n", "<Leader>w", ":bd<CR>", opts)
map("n", "<Leader>=", ":tabnew<CR>", opts)
map("n", "<Leader>qq", ":q<CR>", opts)


-- Telescope
map("n", "ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<S-S>", "<cmd>Telescope find_files<CR>", opts)
map("n", "<C-t>", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<Leader>fh", "<cmd>Telescope help_tags<CR>", opts)


-- Plugins
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')


-- Any valid git URL is allowed

-- Using a non-default branch
--Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

Plug ('tpope/vim-vinegar')
Plug ('scrooloose/nerdcommenter')
Plug ('terryma/vim-multiple-cursors')          -- Multiple cursors like sublime


Plug ('tpope/vim-vinegar')                     -- Project Folder drawer
Plug ('tpope/vim-surround')

Plug ('terryma/vim-multiple-cursors')          -- Multiple cursors like sublime
Plug ('christoomey/vim-system-copy')           -- System copy
Plug ('itchyny/lightline.vim')

Plug ('maximbaz/lightline-ale')                -- Status bar at bottom
Plug ('miyakogi/seiya.vim')                    -- For transparent backkground
Plug ('joshdick/onedark.vim')                  -- One Dark theme

Plug ('glepnir/oceanic-material')

Plug ('junegunn/vim-easy-align')


Plug ('christoomey/vim-system-copy')           -- System copy
Plug ('jwalton512/vim-blade')                  -- Blade highlightings


Plug ('nvim-lua/plenary.nvim')
Plug ('nvim-telescope/telescope.nvim')

vim.cmd [[
  Plug 'phpactor/phpactor', { 'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o' }
]]

vim.cmd [[
  " Equivalent of calling vim-plug's plug#begin()

  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
  else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
  endif

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'josa42/vim-lightline-coc'
  Plug 'mhartington/oceanic-next'
]]

vim.call('plug#end')
vim.g.phpactorEnabled = 1

vim.cmd('source ' .. vim.fn.fnamemodify(debug.getinfo(1).source:sub(2), ":h") .. '/legacy.vim')
-- vim.cmd('source legacy.vim')
-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
