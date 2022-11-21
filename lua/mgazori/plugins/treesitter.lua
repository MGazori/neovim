local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
	  -- A list of parser names, or "all"
  ensure_installed = { "php", "lua", "json", "html" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
	filetypes = { "html" , "xml" },
  },

  autotag = {
    enable = true,
  }

})
