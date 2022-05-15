--KEYBINDINGS
vim.g.mapleader = ' '
-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
--
--LSP
map("n", ",d", ":lua vim.diagnostic.goto_next()<CR>")
map("n", ",n", ":lua vim.lsp.buf.declaration()<CR>")
map("n", ",m", ":lua vim.lsp.buf.definition()<CR>")
map("n", ",h", ":lua vim.lsp.buf.hover()<CR>")
map("n", ",c", ":lua vim.lsp.buf.code_action()<CR>")
map("n", ",f", ":lua vim.lsp.buf.formatting()<CR>")
 
map("n", ",<space>", ":NvimTreeToggle<CR>")

map("n", ",.", ":TroubleToggle<CR>")
--WHICH-KEY
  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }
local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
    ["<space>"] = { "<cmd>NvimTreeToggle<CR>", "Toggle Nvim-Tree" },
    ["."] = { "<cmd>TroubleToggle<CR>", "Toggle Trouble" },

    z = {
      name = "Packer",
      c = { "<cmd>PackerCompile<CR>", "Compile" },
      i = { "<cmd>PackerInstall<CR>", "Install" },
      s = { "<cmd>PackerSync<CR>", "Sync" },
      S = { "<cmd>PackerStatus<CR>", "Status" },
      u = { "<cmd>PackerUpdate<CR>", "Update" },
    },

    d = {
      name = "LSP",
      n = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
      m = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
      h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" },
      c = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
      f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Code" },
    },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
