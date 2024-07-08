local aerial = require "plugins.aerial"
return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    integrations = {
      aerial = true,
    },
    flavour = "frappe", -- latte, frappe, macchiato, mocha
    background = { -- :h background
      light = "latte",
      dark = "mocha",
    },
    transparent_background = false,
    --
  },
}
