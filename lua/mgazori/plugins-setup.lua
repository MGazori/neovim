-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, 'packer')
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)

	use 'wbthomason/packer.nvim' -- packer can manage itself
	use 'nvim-lua/plenary.nvim' -- lua functions that many plugins use

	use 'bluz71/vim-nightfly-colors' -- colorscheme

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

	use 'szw/vim-maximizer' -- maximizes and restores current window
	
	-- essential plugins
	use 'tpope/vim-surround' -- add, delete, change surroundings (it's awesome)
	use 'inkarkat/vim-ReplaceWithRegister' -- replace with register contents using motion (gr + motion)
	
	use 'numToStr/Comment.nvim' -- comment line note: config file in plugins/comment.lua
	
	use 'nvim-tree/nvim-tree.lua' -- nvim tree (file explorer)
	use 'nvim-tree/nvim-web-devicons' -- optional, for file icons
	
	use 'nvim-lualine/lualine.nvim' -- status line
	
	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder note: install https://github.com/BurntSushi/ripgrep for live grep
	
	use 'majutsushi/tagbar' -- tagbar for neovim note: required ctag on system https://github.com/universal-ctags/ctags
	
	-- use 'ap/vim-css-color' -- CSS color preview
	
	use 'Pocco81/auto-save.nvim' -- auto save	
	use 'dstein64/vim-startuptime' -- startup time
	
	-- auto complition
	use({ "neoclide/coc.nvim", branch = "release"}) -- need nodejs and npm
	-- use 'rafamadriz/friendly-snippets'
	
	-- nvim transparent
	use 'xiyaowong/transparent.nvim'

	use 'lewis6991/gitsigns.nvim' -- git integrations
	 
	use({ -- better syntax highlightter
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use 'windwp/nvim-autopairs' -- auto syntax pairs

	use { "catppuccin/nvim", as = "catppuccin" }


	-- Automatically set up your configuration after cloning packer.nvim
	if packer_bootstrap then
		require('packer').sync()
	end
end)
