-- Friendly mapping function
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Quick tab switching
map('n', '<Leader>1', '1gt')
map('n', '<Leader>2', '2gt')
map('n', '<Leader>3', '3gt')
map('n', '<Leader>4', '4gt')
map('n', '<Leader>5', '5gt')
map('n', '<Leader>6', '6gt')
map('n', '<Leader>7', '7gt')
map('n', '<Leader>8', '8gt')
map('n', '<Leader>9', '9gt')
map('n', '<Leader>0', ':tablast<cr>')

-- Toggle line numbers on/off
map('n', '<Leader>N', ':set invnumber<CR>')
map('i', '<Leader>N', '<C-O>:set invnumber<CR>')

-- Turn off search highlight
map('n', '<Leader>h', ':nohlsearch<CR>')

-- Preview html file in firefox
map('n', '<Leader>p', ':silent update<Bar>silent !firefox -P Preview %:p &<CR>')

-- Yank to system regular clipboard
map('v', '<C-c>', '\"+y')

-- Navigate completion menu
map('i', '<silent><expr> <C-Space>', 'compe#complete()')
map('i', '<silent><expr> <CR>', 'compe#confirm(luaeval("require "nvim-autopairs".autopairs_cr()"))')
map('i', '<silent><expr> <C-e>', 'compe#close("<C-e>")')
map('i', '<silent><expr> <C-f>', 'compe#scroll({ "delta": +4 }')
map('i', '<silent><expr> <C-d>', 'compe#scroll({ "delta": -4 }')


-- LSP bindings
map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
