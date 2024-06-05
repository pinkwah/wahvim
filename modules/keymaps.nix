{ ... }:

{
  keymaps = [
    {
      key = "<leader>cl";
      action = "<cmd>LspInfo<cr>";
    }
    {
      key = "gd";
      action.__raw = "function () require('telescope.builtin'.lsp_defintions({{ reuse_win = true }}) end";
      # desc = "Goto definition";
    }
    # "gD" = { action = "declaration"; desc = "Goto declaration"; };
  ];
}
