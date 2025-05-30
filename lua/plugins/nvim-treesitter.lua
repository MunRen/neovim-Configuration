return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    event = "VeryLazy",
    opts = {
        ensure_installed = { "lua", 'python', 'bash' },
        highlight = { enable = true }
    },
}
