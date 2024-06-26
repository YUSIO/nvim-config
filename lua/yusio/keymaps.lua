local map = vim.keymap.set
-- Telescope
local builtin = require('telescope.builtin')
map('n', '<space>ff', builtin.find_files, {desc = "Telescope find files"})
map('n', '<space>fg', builtin.live_grep, {desc = "Telescope live grep"})
map('n', '<space>fb', builtin.buffers, {desc = "Telescope find buffers"})
map('n', '<space>fh', builtin.help_tags, {desc = "Telescope view help tags"})

-- buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
