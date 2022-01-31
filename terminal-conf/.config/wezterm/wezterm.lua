-- bug: enable enable_wayland, can't input chinese
-- bug: chinese have delay
-- TODO: how to disable visual_bell for wezterm?
local wezterm = require 'wezterm'

return {
  use_ime = true,
  --font = wezterm.font("Fira Code", {weight="Regular"}),
  font = wezterm.font_with_fallback{ {family="Fira Code", weight="Regular"}, },
  --default_cursor_style = "SteadyBar",
  default_cursor_style = "SteadyBlock",

  --[[
  font_size = 16.0,
  enable_wayland = true,
  --]]

  ---[[
  font_size = 12.0,
  enable_wayland = false,
  --]]

  color_scheme = "Dracula",
  --color_scheme = "DoomOne",
  keys = {
    -- This will create a new split and run your default program inside it
    {key="|", mods="CTRL",
    action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},

    {key="/", mods="CTRL",
    action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},

  },

  exit_behavior = "Close",
  -- enable battery
  wezterm.on("update-right-status", function(window, _)
    -- "Wed Mar 3 08:14"
    local date = wezterm.strftime("%a %b %-d %H:%M ");

    local bat = ""
    for _, b in ipairs(wezterm.battery_info()) do
      --🔋
      bat = " " .. string.format("%.0f%%", b.state_of_charge * 100)
    end

    window:set_right_status(wezterm.format({
      {Text=bat .. "   "..date},
    }));
  end),

  tab_bar_at_bottom = true,
  scrollback_lines = 3500,

  -- disable scrollbar
  enable_scroll_bar = false,

  -- disable popup
  warn_about_missing_glyphs = false,

  tab_max_width = 20,

  -- padding
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },

  window_decorations = "TITLE",
}
