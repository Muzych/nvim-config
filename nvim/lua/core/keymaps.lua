vim.g.mapleader = " "

local keymap = vim.keymap

----- Insert Mode -----
keymap.set("i", "jk", "<ESC>") --快速按下jk来代替ESC键推出插入模式

----- Normal Mode -----
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sh', '<C-w>s')

----- bufferline -----
-- bufferline
-- 左右Tab切换
keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
-- 关闭
--"moll/vim-bbye"
keymap.set("n", "<C-w>", ":Bdelete!<CR>")
keymap.set("n", "<leader>bl", ":BufferLineCloseRight<CR>")
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<CR>")
keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>")

--- nvim-tree
keymap.set("n", "<A-m>", ":NvimTreeToggle<CR>")
