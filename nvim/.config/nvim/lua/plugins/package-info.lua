return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  keys = {
    { mode = { "n" }, "<leader>ns", '<cmd>require("package-info").show<cr>', desc = "Show dependency versions" },
    { mode = { "n" }, "<leader>nc", '<cmd>require("package-info").hide<cr>', desc = "Hide dependency versions" },
    { mode = { "n" }, "<leader>nt", '<cmd>require("package-info").toggle<cr>', desc = "Toggle dependency versions" },
    { mode = { "n" }, "<leader>nu", '<cmd>require("package-info").update<cr>', desc = "Update dependency on the line" },
    { mode = { "n" }, "<leader>nd", '<cmd>require("package-info").delete<cr>', desc = "Delete dependency on the line" },
    { mode = { "n" }, "<leader>ni", '<cmd>require("package-info").install<cr>', desc = "Install a new dependency" },
    {
      mode = { "n" },
      "<leader>np",
      '<cmd>require("package-info").change_version<cr>',
      desc = "Install a different dependency version",
    },
  },
}
