-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- plugins

return packer.startup(function(use)

  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")
  
  -- Theme
  use('jacoborus/tender.vim')

  -- IDE

  use('easymotion/vim-easymotion')
  use('christoomey/vim-tmux-navigator')
  use('ryanoasis/vim-devicons')
  use('itchyny/lightline.vim')
  use('Townk/vim-autoclose')
  use('ap/vim-buftabline')
  use {
   'nvim-tree/nvim-tree.lua',
   requires = {
     'nvim-tree/nvim-web-devicons', -- optional, for file icons
   },
   tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Completion
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Cursorline
  use('yamatsum/nvim-cursorline')

  if packer_bootstrap then
    require("packer").sync()
  end
end)
