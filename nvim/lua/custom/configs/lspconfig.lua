local M = {}

M.on_attach = function(_, bufnr)
  local opts = { buffer = bufnr, silent = true }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, opts)

  -- Add these lines for signature help
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  -- vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)  -- Works in insert mode too
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

local clangd_capabilities = vim.deepcopy(M.capabilities) -- Copy default capabilities
clangd_capabilities.offsetEncoding = { 'utf-16' } -- Set clangd-specific offset encoding

lspconfig.clangd.setup {
  on_attach = M.on_attach,
  capabilities = clangd_capabilities,
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=llvm",
    "--compile-commands-dir=.",
    "--query-driver=/usr/bin/clang++",
  },
  init_options = {
    compilationDatabasePath = ".",
    fallbackFlags = { "-std=c++20", "-Wall", "-I." },
  },
}

lspconfig.pyright.setup({
  on_attach = M.on_attach,
  capabilities = M.capabilities,
  filetypes = {"python"},
})

vim.diagnostic.config({
  virtual_text = true,         -- shows inline text
  signs = true,                -- shows gutter signs (like W/E)
  underline = true,            -- underlines problem text
  update_in_insert = true, -- update while typing
  severity_sort = true,        -- sort by severity
})

vim.api.nvim_create_autocmd("CursorHoldI", {
  callback = function()
    vim.lsp.buf.signature_help()
  end,
})


return M
