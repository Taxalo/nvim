local api = require('remote-sshfs.api')
vim.keymap.set('n', '<leader>rc', api.connect, {})
vim.keymap.set('n', '<leader>rd', api.disconnect, {})
vim.keymap.set('n', '<leader>re', api.edit, {})

local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files()
end, {})
vim.keymap.set("n", "<leader>fg", function()
	builtin.live_grep()
end, {})


vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set("n", '<leader>fs', vim.lsp.buf.format, {})

vim.keymap.set("n", "<leader>eq", vim.cmd.Ex)
