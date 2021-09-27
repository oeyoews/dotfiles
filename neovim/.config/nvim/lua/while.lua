local api = vim.api
local buf, win

local function open_window()
  buf = api.nvim_create_buf(buf, false)

  api.nvim_buf_set_option("columns")

  -- gent dimenisons
  local width = api.nvim_get_option("columns")
  local height = api.nvim_get_option("lines")

  -- calculate our floating window size
  local win_height = math.ceil(height*0.8-4)
  local win_width = math.ceil(width*0.8)

  -- add it starting position
  local row = math.ceil((height-win_height)/2-1)
  local col = math.ceil((width-win_width)/2)

  -- set some options
  local opts = {
    style = "minimal",
    relative = "editor",
    width = win_width,
    height = win_height,
    row = row,
    col = col
  }

  -- and finily create it with buffer attached
  win = api.nvim_open_win(buf, true, opts)
end

-- set some options
local border_opts = {
  style = "minimal",
  relative = "editor",
  width = win_width + 2,
  height = win_height + 2,
  row = row - 1,
  col = col - 1,
}
