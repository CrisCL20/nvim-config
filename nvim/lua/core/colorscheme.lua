vim.cmd('let $NVIM_TUI_ENABLE_TRUE_COLOR=1')

local status,_=pcall(vim.cmd,'colorscheme tender')
if not status then 
  print('Not a colorscheme')
  return
end

--vim.g.lightline = { 'colorscheme':'solarized' }
