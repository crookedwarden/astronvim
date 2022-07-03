return {
  ["EdenEast/nightfox.nvim"] = {
        config = function()
            require("nightfox").setup("user.plugins.nightfox")
        end,
    },
    ["mfussenegger/nvim-dap"] = {
        module = "dap",
        config = require "user.plugins.dap"
    },
    ["rcarriga/nvim-dap-ui"] = {
        after = "nvim-dap",
        config = function()
            local dap, dapui = require "dap", require "dapui"
            dapui.setup(require "user.plugins.dapui")
            -- add listeners to auto open DAP UI
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
    ["theHamsta/nvim-dap-virtual-text"] = {
      config = function()
        require("nvim-dap-virtual-text").setup("user.plugins.dap-virtual-text")
      end
    }
}
