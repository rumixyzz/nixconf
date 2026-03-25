vim.opt.cb = "unnamedplus";
vim.opt.nu = true;
vim.opt.rnu = true;
vim.opt.sw = 4;
vim.opt.ts = 4;
vim.opt.et = true;

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'nix','lua','python' },
  callback = function() vim.treesitter.start() end,
})

vim.cmd.color("gruvbox")
require("lualine").setup()
