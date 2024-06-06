{ ... }:

{
  keymaps = [
    {
      key = "<leader>cl";
      action = "<cmd>LspInfo<cr>";
    }

    {
      key = "<C-b>";
      action = "<Left>";
      options.silent = true;
    }

    {
      key = "<C-f>";
      action = "<Right>";
      options.silent = true;
    }

    {
      key = "<C-p>";
      action = "<Up>";
      options.silent = true;
    }

    {
      key = "<C-n>";
      action = "<Down>";
      options.silent = true;
    }

    {
      key = "<C-a>";
      action = "<Home>";
      options.silent = true;
    }

    {
      key = "<C-e>";
      action = "<End>";
      options.silent = true;
    }

    {
      key = "<C-x><C-f>";
      action = "<Cmd>Telescope file_browser theme=ivy<Cr>";
    }

    {
      key = "<leader>f";
      action = "<Cmd>Telescope file_browser theme=ivy<Cr>";
      mode = [ "n" ];
    }

    {
      key = "<leader><Space>";
      action = "<Cmd>Telescope find_file theme=ivy<Cr>";
      mode = [ "n" ];
    }
  ];
}
