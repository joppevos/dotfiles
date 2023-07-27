
return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- Simple plugins can be specified as strings
    use("tpope/vim-fugitive")
    use("tpope/vim-commentary")

    -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}

    -- trying copilot for 1 week
    -- use("github/copilot.vim")
    use("github/copilot.vim")
    use("zbirenbaum/copilot.lua");
    use({
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function ()
            require("copilot_cmp").setup()
        end
    });
    -- open files in github
    use "almo7aya/openingh.nvim"
    -- chatgpt
    -- use("nvim-lua/plenary.nvim")
    use("MunifTanjim/nui.nvim")
    use("dpayne/CodeGPT.nvim")
    -- hardmode
    -- use("takac/vim-hardtime")


    -- tokyonight theme
    use("folke/tokyonight.nvim")

    -- All the things
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    use("fatih/vim-go")
    use("mbbill/undotree")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)
