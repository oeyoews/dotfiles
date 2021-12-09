-- bug: enable enable_wayland, can't input chinese
-- bug: chinese have delay
-- TODO: how to disable visual_bell for wezterm?
local wezterm = require 'wezterm'

--[[

local success, date, stderr = wezterm.run_child_process({"date"});

wezterm.log_info(wezterm.format({
  {Attribute={Underline="Single"}},
  {Foreground={AnsiColor="Fuschia"}},
  {Background={Color="blue"}},
  {Text="Hello " .. date},
}))
--]]

return {
  use_ime = true,
  --font = wezterm.font("Fira Code", {weight="Regular"}),
  font = wezterm.font_with_fallback{ {family="Fira Code", weight="Regular"}, },
  default_cursor_style = "SteadyBar",

  --[[
  font_size = 16.0,
  enable_wayland = true,
  --]]

  ---[[
  font_size = 12.0,
  enable_wayland = false,
  --]]

  --color_scheme = "Dracula",
  color_scheme = "DoomOne",
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


  --[[
  window_background_gradient = {
    -- Can be "Vertical" or "Horizontal".  Specifies the direction
    -- in which the color gradient varies.  The default is "Horizontal",
    -- with the gradient going from left-to-right.
    -- Radial gradients are also supported; see the other example below
    orientation = "Vertical",

    -- Specifies the set of colors that are interpolated in the gradient.
    -- Accepts CSS style color specs, from named colors, through rgb
    -- strings and more
    colors = {
      "#0f0c29",
      "#302b63",
      "#24243e"
    },

    -- Instead of specifying `colors`, you can use one of a number of
    -- predefined, preset gradients.
    -- A list of presets is shown in a section below.
    -- preset = "Warm",

    -- Specifies the interpolation style to be used.
    -- "Linear", "Basis" and "CatmullRom" as supported.
    -- The default is "Linear".
    interpolation = "Linear",

    -- How the colors are blended in the gradient.
    -- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
    -- The default is "Rgb".
    blend = "Rgb",

    -- To avoid vertical color banding for horizontal gradients, the
    -- gradient position is randomly shifted by up to the `noise` value
    -- for each pixel.
    -- Smaller values, or 0, will make bands more prominent.
    -- The default value is 64 which gives decent looking results
    -- on a retina macbook pro display.
    -- noise = 64,

    -- By default, the gradient smoothly transitions between the colors.
    -- You can adjust the sharpness by specifying the segment_size and
    -- segment_smoothness parameters.
    -- segment_size configures how many segments are present.
    -- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
    -- 1.0 is a soft edge.

    -- segment_size = 11,
    -- segment_smoothness = 0.0,
  },
  --]]

}

