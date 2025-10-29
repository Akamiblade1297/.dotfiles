vim.wo.number = true
vim.wo.relativenumber=true

vim.o.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.swapfile = false
vim.o.termguicolors = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "csv",
    callback = function()
        vim.cmd("CsvViewEnable delimetr=l, display_mode=border")
    end
})
