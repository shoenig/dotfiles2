# .config/wezterm/wezterm.lua

local wezterm = require 'wezterm'

return {
  default_prog = { '/bin/bash', '-l'},

  initial_rows = 40,
  initial_cols = 120,
  use_fancy_tab_bar = false,
  colors = {
    tab_bar = {
      active_tab = {
        bg_color = '#0000ff',
        fg_color = '#ffffff',
      },
    },
  },

  keys = {
    {
      key = 't',
      mods = 'CTRL',
      action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
    {
      key = '[',
      mods = 'CTRL',
      action = wezterm.action.ActivateTabRelative(-1),
    },
    {
      key = ']',
      mods = 'CTRL',
      action = wezterm.action.ActivateTabRelative(1),
    },
  },

  font = wezterm.font 'Berkeley Mono',
  font_size = 15,

  color_scheme = "Afterglow",
}
