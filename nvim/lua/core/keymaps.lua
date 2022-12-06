vim.g.mapleader = ","

local keymap = vim.keymap

keymap.set("n","fe","<Plug>(easymotion-s2)")
keymap.set('n','<C-t>',':NvimTreeToggle<CR>')
keymap.set("n",'<C-c>',':NvimTreeClose<CR>')
keymap.set("n","<C-e>",":q<CR>")
keymap.set("n","<C-w>",":w<CR>")
keymap.set("n","<C-q>",":q!<CR>")

-- TABS
keymap.set("n","<C-P>",":bprev<CR>")
keymap.set("n","<C-N>",":bnext<CR>")
