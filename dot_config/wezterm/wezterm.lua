local wezterm = require("wezterm")

return {
  window_background_opacity = 1.0,
  use_ime = true,
  font = wezterm.font_with_fallback({
    "Fira Code",
  }),

  default_cursor_style = "SteadyBlock",

  font_size = 16.0,
  enable_wayland = false,

  color_scheme = "MaterialOcean",
  keys = {
    -- This will create a new split and run your default program inside it
    { key = "p", mods = "CTRL", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },

    { key = "/", mods = "CTRL", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
  },

  exit_behavior = "Close",
  wezterm.on("update-right-status", function(window, _)
    local date = wezterm.strftime("%a %b %-d %H:%M ")

    local bat = ""
    for _, b in ipairs(wezterm.battery_info()) do
      bat = " 🔋" .. string.format("%.0f%%", b.state_of_charge * 100)
    end

    window:set_right_status(wezterm.format({
      { Text = bat .. "   " .. date },
    }))
  end),

  tab_bar_at_bottom = false,
  scrollback_lines = 350,
  enable_scroll_bar = false,
  warn_about_missing_glyphs = false,
  tab_max_width = 20,
  window_padding = {
    left = 1,
    right = 1,
    top = 0,
    bottom = 0,
  },

  window_decorations = "TITLE",
}

