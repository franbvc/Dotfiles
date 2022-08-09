local nnoremap = require("franbvc.keymap").nnoremap

-- :help key-notation

-- Open newrt
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Toogle NERDTree
nnoremap("<leader>op", "<cmd>NERDTreeToggle<CR>")

-- -----------------------
-- DOOM EMACS WINDOW SPLIT
-- -----------------------

-- vertical split
nnoremap("<leader>wv", "<cmd>vsplit<CR>")

-- horizontal split
nnoremap("<leader>ws", "<cmd>split<CR>")

-- ----------------------------
-- DOOM EMACS WINDOW NAVIGATION
-- ----------------------------

-- close window
nnoremap("<leader>wq", "<cmd>q<CR>")
nnoremap("<leader>wc", "<cmd>q<CR>")

-- go to left window
nnoremap("<leader>wh", "<C-w>h")
nnoremap("<C-h>", "<C-w>h")

-- go to bottom window
nnoremap("<leader>wj", "<C-w>j")
nnoremap("<C-j>", "<C-w>j")

-- go to top window
nnoremap("<leader>wk", "<C-w>k")
nnoremap("<C-k>", "<C-w>k")

-- go to right window
nnoremap("<leader>wl", "<C-w>l")
nnoremap("<C-l>", "<C-w>l")

-- ----------------------------
-- DOOM EMACS WINDOW MOVEMENT
-- ----------------------------

-- move window to far left
nnoremap("<leader>wH", "<C-w>H")

-- move window to very bottom
nnoremap("<leader>wJ", "<C-w>J")

-- move window to very top
nnoremap("<leader>wK", "<C-w>K")

-- move window to far right
nnoremap("<leader>wL", "<C-w>L")

-- ------------------------
-- DOOM EMACS WINDOW RESIZE
-- ------------------------

-- Grow window to the left
nnoremap("<leader>gh", "<cmd>vertical-res -10<CR>")

-- Grow window to the bottom
nnoremap("<leader>gj", "<cmd>res -5<CR>")

-- Grow window to the top
nnoremap("<leader>gk", "<cmd>res +5<CR>")

-- Grow window to the right
nnoremap("<leader>gl", "<cmd>vertical-res +10<CR>")

-- -----------------
-- DOOM EMACS BUFFER
-- -----------------

-- List existing buffers
nnoremap("<leader>bi", "<cmd>buffers<CR>")

-- Go to next buffer 
nnoremap("<leader>bn", "<cmd>bn<CR>")

-- Go to previous buffer 
nnoremap("<leader>bp", "<cmd>bp<CR>")

-- Delete current buffer
nnoremap("<leader>bd", "<cmd>bd<CR>")
nnoremap("<leader>bk", "<cmd>bd<CR>")

-- Save current buffer file
nnoremap("<leader>bs", "<cmd>w<CR>")

