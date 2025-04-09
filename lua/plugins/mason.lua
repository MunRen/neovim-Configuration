return {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig.nvim",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)
        local registry = require "mason-registry"

        local success, package = pcall(registry.get_package, "lua-language-server")
        if success and not package:is_installed() then
            package:install()
        end

		local function setup(name, config)
		    local success, package = pcall(registry.get_package, name)
    		if success and not package:is_installed() then
        		package:install()
    		end

    		local lsp = require("mason-lspconfig.mappings.server").package_to_lspconfig[name]
			config.capabilities = require("blink.cmp").get_lsp_capabilities()
    		require("lspconfig")[lsp].setup(config)
		end

		setup("lua-language-server", {
		    settings = {
		        Lua = {
		            diagnostics = {
		                globals = { "vim" },
		            },
		        }
		    }
		})

	vim.diagnostic.config({ update_in_insert = true })
	vim.cmd("LspStart")
    end,
}
