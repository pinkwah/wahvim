{ helpers, ... }:

{
  plugins.lsp.enable = true;

  plugins.lsp.servers = {
    clangd.enable = true;
    cmake.enable = true;
    fortls.enable = true;
    gdscript.enable = true;
    html.enable = true;
    intelephense.enable = true;
    java-language-server.enable = true;
    jsonls.enable = true;
    lua-ls.enable = true;
    nixd.enable = true;
    nushell.enable = true;
    omnisharp.enable = true;
    pyright.enable = true;
    ruby-lsp.enable = true;

    rust-analyzer = {
      enable = true;
      installCargo = true;
      installRustc = true;
    };

    tsserver.enable = true;
    vala-ls.enable = true;
    yamlls.enable = true;
  };

  plugins.lsp.keymaps = {
    lspBuf = {
      "gd" = {
        action = "definition";
        desc = "Go to definition";
      };
      "gD" = {
        action = "declaration";
        desc = "Go to declaration";
      };
      "K" = {
        action = "hover";
        desc = "Hover";
      };
      "gK" = {
        action = "signature_help";
        desc = "Signature help";
      };
      "<leader>ca" = { action = "code_action"; desc = "Code action"; };
    };
    # codelens = {
      # "<leader>cc" = { action = "run"; desc = "Run codelens"; mode = [ "n" "v" ]; };
      # "<leader>cC" = { action = "refresh"; desc = "Refresh & display codelens"; mode = [ "n" ]; };
    # };
    extra = [
      {
        key = "<leader>cl";
        action = "<cmd>LspInfo<cr>";
        options.desc = "Lsp Info";
      }
      {
        key = "gr";
        action = "<cmd>Telescope lsp_references<cr>";
        options.desc = "Find references";
      }
      {
        key = "gy";
        action = helpers.mkRaw "function() require(\"telescope.builtin\").lsp_type_definitions({ reuse_win = true }) end";
        options.desc = "Goto T[y]pe definition";
      }
    ];
  };
}
