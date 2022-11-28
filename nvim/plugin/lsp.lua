local cmp = require("cmp")
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end


cmp.setup {
  sources = {
 	{ name = 'cmp_tabnine' },
  },
  mapping = cmp.mapping.preset.insert({
        -- ['<enter>'] = cmp.mapping.confirm({ select = true }),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
	}),
  -- https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#super-tab-like-mapping
  -- INTELLIJ like mapping
  -- mapping = {
  --   ["<Tab>"] = cmp.mapping(function(fallback)
  --     -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
  --     if cmp.visible() then
  --       local entry = cmp.get_selected_entry()
	-- if not entry then
	  -- cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
	-- else
	  -- cmp.confirm()
	-- end
  --     else
  --       fallback()
  --     end
  --   end, {"i","s","c",}),
  -- }
}

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = '..',
	show_prediction_strength = false
})

require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    debounce = 75,
    keymap = {
     accept = "<M-l>",
     next = "<M-]>",
     prev = "<M-[>",
     dismiss = "<C-]>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node version must be < 18
  server_opts_overrides = {},
})
