vim.g.mapleader = ","

local keymap = vim.keymap

keymap.set("n","fe","<Plug>(easymotion-s2)")
keymap.set("n","<leader>t",":NERDTreeFind<CR>")
keymap.set("n","e",":q<CR>")
keymap.set("n","s",":w<CR>")
keymap.set("n","q",":q!<CR>")

-- TABS
keymap.set("n","<C-P>",":bprev<CR>")
keymap.set("n","<C-N>",":bnext<CR>")
