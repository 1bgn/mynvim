return {
  -- for DAP support
  { "mfussenegger/nvim-dap" },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    lazy = false,
    config = function()
      require("flutter-tools").setup({
        -- (uncomment below line for windows only)
        -- flutter_path = "home/flutter/bin/flutter.bat",
        dev_tools = {
          autostart = true, -- autostart devtools server if not detected
          auto_open_browser = true, -- Automatically opens devtools in the browser
        },
        outline = {
          open_cmd = "30vnew", -- command to use to open the outline buffer
          auto_open = false, -- if true this will open the outline automatically when it is first populated
        },
        ui = {
          border = "rounded",
        },
        decorations = {
          statusline = {
            project_config = true,
            -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
            -- this will show the current version of the flutter app from the pubspec.yaml file
            app_version = true,
            -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
            -- this will show the currently running device if an application was started with a specific
            -- device
            device = true,
            -- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
            -- this will show the currently selected project configuration
          },
        },
        closing_tags = {

          enabled = true, -- set to false to disable
        },
        lsp = {
          widget_guides = {
            enabled = true,
          },
          -- color = { -- show the derived colours for dart variables
          --   enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          --   background = true, -- highlight the background
          --   background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
          --   foreground = true, -- highlight the foreground
          --   virtual_text = true, -- show the highlight using virtual text
          --   --virtual_text_str = "■", -- the virtual text character to highlight
          -- },

          -- see the link below for details on each option:
          -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
          settings = {
            showTodos = false,
            completeFunctionCalls = true,

            renameFilesWithClasses = "prompt", -- "always"
            enableSnippets = true,
            updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
          },
        },
      })
    end,
  },
  -- for dart syntax hightling
}
