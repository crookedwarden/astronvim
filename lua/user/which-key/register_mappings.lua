return {
  n = {
    ["<leader>"] = {
      f = {
        name = "Telescope",
        ["?"] = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        ["'"] = { "<cmd>Telescope marks<cr>", "Marks" },
        B = { "<cmd>Telescope bibtex<cr>", "BibTeX" },
        e = { "<cmd>Telescope file_browser<cr>", "Explorer" },
        h = { "<cmd>Telescope oldfiles<cr>", "History" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        M = { "<cmd>Telescope media_files<cr>", "Media" },
        n = { "<cmd>Telescope notify<cr>", "Notifications" },
        p = { "<cmd>Telescope project<cr>", "Projects" },
        r = { "<cmd>Telescope registers<cr>", "Registers" },
        t = { "<cmd>Telescope colorscheme<cr>", "Themes" },
      },
      x = {
        name = "Debugger",
        b = {
          function()
            require("dap").toggle_breakpoint()
          end,
          "Toggle Breakpoint",
        },
        B = {
          function()
            require("dap").clear_breakpoints()
          end,
          "Clear Breakpoints",
        },
        c = {
          function()
            require("dap").continue()
          end,
          "Continue",
        },
        i = {
          function()
            require("dap").step_into()
          end,
          "Step Into",
        },
        l = {
          function()
            require("dapui").float_element "breakpoints"
          end,
          "List Breakpoints",
        },
        o = {
          function()
            require("dap").step_over()
          end,
          "Step Over",
        },
        q = {
          function()
            require("dap").close()
          end,
          "Close Session",
        },
        Q = {
          function()
            require("dap").terminate()
          end,
          "Terminate",
        },
        r = {
          function()
            require("dap").repl.toggle()
          end,
          "REPL",
        },
        s = {
          function()
            require("dapui").float_element "scopes"
          end,
          "Scopes",
        },
        t = {
          function()
            require("dapui").float_element "stacks"
          end,
          "Threads",
        },
        u = {
          function()
            require("dapui").toggle()
          end,
          "Toggle Debugger UI",
        },
        w = {
          function()
            require("dapui").float_element "watches"
          end,
          "Watches",
        },
        x = {
          function()
            require("dap.ui.widgets").hover()
          end,
          "Inspect",
        },
        e = {
          function()
            require("dapui").eval()
          end,
          "Evaluate Line",
        },
      },
    },
  }
}

