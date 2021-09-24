lua << EOF
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
local opts = {}

local lsp_installer_servers = require'nvim-lsp-installer.servers'

local ok, rust_analyzer = lsp_installer_servers.get_server("rust_analyzer")
if ok then
    if not rust_analyzer:is_installed() then
        rust_analyzer:install()
    end
end


-- local ok, pyright = lsp_installer_servers.get_server("pyright")
-- if ok then
--   if not pyright:is_installed() then
--     pyright:install()
--   end
-- end

server:setup(opts)
end)
EOF
