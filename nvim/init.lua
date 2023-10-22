vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.cmd([[

set number
set encoding=utf-8
set list
set lcs+=space:·
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:ale_linters = {
\  'javascript': ['eslint'],
\}

call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v4.4.0' }
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
 	Plug 'itchyny/lightline.vim'
	Plug 'navarasu/onedark.nvim'
	Plug 'dense-analysis/ale'
	Plug 'rust-lang/rust.vim'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

]])


require('onedark').setup{
	style = 'darker',
	transparent = true
}
require('onedark').load()

require("bufferline").setup{}

require'nvim-treesitter.configs'.setup{}

require('telescope').setup{}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})


