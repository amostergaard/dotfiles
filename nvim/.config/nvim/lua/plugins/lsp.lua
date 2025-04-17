return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Turn off `ts_ls` for Deno projects, as it doesn't handle the deno namespace well
        ts_ls = {
          enabled = not vim.fs.root(0, { "deno.json", "deno.jsonc" }) and vim.fs.root(0, {
            "tsconfig.json",
            "jsconfig.json",
            "package.json",
            ".git",
          }),
        },
      },
    },
  },
}
