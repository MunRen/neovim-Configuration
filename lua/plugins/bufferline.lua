return {
    "akinsho/bufferline.nvim",
    dependencies = {
	"nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
        { "<leader>bh", ":BufferLineCyclePrev<CR>", silent = true },
        { "<leader>bl", ":BufferLineCycleNext<CR>", silent = true },
        { "<leader>bd", ":bdelete<CR>", silent = true },
        { "<leader>bo", ":BufferLineCloseOthers<CR>", silent = true },
        { "<leader>bp", ":BufferLinePick<CR>", silent = true },
        { "<leader>bc", ":BufferLinePickClose<CR>", silent = true },
    },
--    lazy = false,
}

--<leader>bh：切换到左侧的 buffer
--<leader>bl：切换到右侧的 buffer
--<leader>bd：关闭当前 buffer（这里的 bdelete 是 neovim 自带的命令）
--<leader>bo：关闭其他 buffer
--<leader>bp：选中特定 buffer（按下后，buffer 旁边会出现字母，按下对应字母跳转到该 buffer）
--<leader>bc：关闭特定 buffer
