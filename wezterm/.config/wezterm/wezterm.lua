-- bug: enable enable_wayland, can't input chinese
local wezterm = require 'wezterm';
return {
  font_size = 12.0,
  font = wezterm.font("Fira Code", {weight="Light"}),
  use_ime = true,
  --enable_wayland = true,
  color_scheme = "Dracula",
  keys = {

    -- This will create a new split and run your default program inside it
    {key="|", mods="CTRL",
    action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},

    {key="/", mods="CTRL",
    action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},

  },

  exit_behavior = "Close",
  --window_frame = {
    --inactive_titlebar_bg = "#353535",
    --active_titlebar_bg = "#2b2042",
    --inactive_titlebar_fg = "#cccccc",
    --active_titlebar_fg = "#ffffff",
    --inactive_titlebar_border_bottom = "#2b2042",
    --active_titlebar_border_bottom = "#2b2042",
    --button_fg = "#cccccc",
    --button_bg = "#2b2042",
    --button_hover_fg = "#ffffff",
    --button_hover_bg = "#3b3052",
    --}

    -- enable battery
    wezterm.on("update-right-status", function(window, pane)
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

    tab_bar_at_bottom = true
  }
