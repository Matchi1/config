if !exists('g:lspconfig')
	finish
endif

lua << EOF
--[[
require'lspconfig'.java_language_server.setup {
	cmd = { "/home/chan/server/java-language-server/dist/lang_server_linux.sh"}
}
]]--
require'lspconfig'.pyright.setup { }
EOF
