return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
            transparent = true,
            saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
            italic_comments = false,
            hide_fillchars = false,
            borderless_pickers = false,
            terminal_colors = true,
            cache = false,
        })
        vim.cmd.colorscheme "cyberdream"
    end
}
