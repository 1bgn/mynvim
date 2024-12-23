return {
{
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
config = function()
            require("flutter-tools").setup {
         dev_log = {
    enabled = true,
    filter = nil, -- optional callback to filter the log
    -- takes a log_line as string argument; returns a boolean or nil;
    -- the log_line is only added to the output if the function returns true
    notify_errors = false, -- if there is an error whilst running then notify the user
    open_cmd = "12split", -- command to use to open the log buffer
    focus_on_open = false, -- focus on the newly opened log window
  },
       decorations = {
    statusline = {
      -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
      -- this will show the current version of the flutter app from the pubspec.yaml file
      app_version = true,
      -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
      -- this will show the currently running device if an application was started with a specific
      -- device
      device = true,
      -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
      -- this will show the currently selected project configuration
      project_config = false,
    }
  },
 lsp = {
    --       color = { -- show the derived colours for dart variables
    --   enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
    --   background = true, -- highlight the background
    --   background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
    --   foreground = false, -- highlight the foreground
    --   virtual_text = true, -- show the highlight using virtual text
    --   virtual_text_str = "■", -- the virtual text character to highlight
    -- },
                    settings = {
                       renameFilesWithClasses = "prompt",
            completeFunctionCalls = true,
             updateImportsOnRename = true,
            enableSnippets = true,
                    },

                },

 
      }

    end
  }
}
