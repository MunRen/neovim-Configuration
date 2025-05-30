return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    event = "VeryLazy",
	opts = {
	    completion = {
	        documentation = {
	            auto_show = true,
	        },
	    },
	    keymap = {
	        preset = "super-tab",
	    },
	    sources = {
	        default = { "path", "snippets", "buffer", "lsp" },
	    },
		cmdline = {
			keymap = {
				preset = "super-tab",
				['<C-p>'] = { 'select_prev', 'fallback' },
				['<C-n>'] = { 'select_next', 'fallback' },
			},
			completion = {
				ghost_text = { enabled = true },
				--menu = { auto_show = true },
				menu = {
						auto_show = function()
							local cmd_type = vim.fn.getcmdtype()
							if cmd_type == "/" or cmd_type == "?" then
								return { "buffer" }
							end
							if cmd_type == ":" then
								return { "cmdline" }
							end
						end,
				},
			},
		},
	},
}
