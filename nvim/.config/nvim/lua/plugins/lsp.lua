-- This didn't end up working
--[[
local nvim_lsp = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {
          filetypes = { "typescript", "typescriptreact" },
          root_dir = function(...)
            return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
          end,
        },
        vtsls = {
          -- root_dir = nvim_lsp.util.root_pattern("package.json"),
          root_dir = function()
            return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
              and vim.fs.root(0, {
                "tsconfig.json",
                "jsconfig.json",
                "package.json",
                ".git",
              })
          end,
        },
      },
    },
  },
}
]]

-- Attempted to adapt from Reddit as well - Also didn't end up working
--[[
env.lspconfig.denols.setup({
  capabilities = env.capabilities,
  root_dir = function(fname)
    local deno = misc.findup(fname, { "deno.json" })
    local node = misc.findup(fname, { "package.json", "node_modules" })
    if deno then
      if not node or #node > #deno then
        return deno
      end
    end
    if node then
      return nil
    end
    return vim.fs.dirname(fname)
  end,
  single_file_support = false,
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "markdown" },
  settings = {
    enable = true,
    unstable = true,
  },
})

env.lspconfig.vtsls.setup({
  capabilities = env.capabilities,
  root_dir = function(fname)
    local node = misc.findup(fname, { "package.json", "node_modules" })
    if node then
      local deno = misc.findup(fname, { "deno.json" })
      if not deno or #deno > #node then
        return node
      end
    end
  end,
  single_file_support = false,
  settings = {
    javascript = {
      suggest = {
        names = false,
        completeFunctionCalls = true,
      },
    },
    typescript = {
      suggest = {
        names = false,
        completeFunctionCalls = true,
      },
      preferences = {
        names = false,
      },
    },
  },
})
]]
