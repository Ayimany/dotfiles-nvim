return {
    "mfussenegger/nvim-dap",

    dependencies = {
        "rcarriga/nvim-dap-ui"           ,
        "nvim-neotest/nvim-nio"          ,
        "theHamsta/nvim-dap-virtual-text",
        "jay-babu/mason-nvim-dap.nvim"   ,
    },

    opts = {
        daptxt = {
            enabled                     = true ,                  
            enabled_commands            = true ,          
            highlight_changed_variables = true ,
            highlight_new_as_changed    = false,  
            show_stop_reason            = true ,            
            commented                   = false,              
            only_first_definition       = true ,        
            all_references              = false,               
            clear_on_continue           = false,             
            all_frames                  = false,  
            virt_lines                  = false,   
            virt_text_win_col           = nil  ,

            display_callback = function(variable, buf, stackframe, node, options)
                if options.virt_text_pos == 'inline' then
                    return ' = ' .. variable.value
                else
                    return variable.name .. ' = ' .. variable.value
                end
            end,

            virt_text_pos = vim.fn.has 'nvim-0.10' == 1 and 'inline' or 'eol',

        },

        mason = {
            handlers = {},
            ensure_installed = require("data.lsp").daps
        },

        keybinds = {
            ["<leader>Dd"] = { "<cmd>lua require('dapui').toggle()<CR>", "Toggle Debugger"   },
            ["<leader>Db"] = { "<cmd>DapToggleBreakpoint<CR>"          , "Toggle Breakpoint" },
            ["<leader>Dc"] = { "<cmd>DapContinue<CR>"                  , "Continue"          },
            ["<leader>Do"] = { "<cmd>DapStepOver<CR>"                  , "Step Over"         },
            ["<leader>Di"] = { "<cmd>DapStepInto<CR>"                  , "Step Into"         },
            ["<leader>DO"] = { "<cmd>DapStepOut<CR>"                   , "Step Out"          },
            ["<leader>Dr"] = { "<cmd>DapRestartFrame<CR>"              , "Restart Frame"     },
        }
    },

    config = function(plugin, opts)
        local dapui = require("dapui")
        local dap   = require("dap")
        
        dap.listeners.before.event_terminated.dapui_config  = function() dapui.close() end
        dap.listeners.before.event_exited.dapui_config      = function() dapui.close() end
        dap.listeners.before.attach.dapui_config            = function() dapui.open()  end
        dap.listeners.before.launch.dapui_config            = function() dapui.open()  end

        require("nvim-dap-virtual-text").setup(opts.daptxt)
        require("mason-nvim-dap").setup(opts.mason)
        require("which-key").register(opts.keybinds)
    end
}

