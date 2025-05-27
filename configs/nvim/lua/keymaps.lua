vim.g.mapleader = ' '
vim.g.localmapleader = ' '

local opts = { noremap = true, silent = true }

function ToggleRelativeNumber()
    vim.g.relativenumber = not vim.g.relativenumber
	vim.cmd(vim.g.relativenumber and "set relativenumber" or "set norelativenumber")
end

vim.keymap.set("n", "<leader>n", ToggleRelativeNumber, opts)
