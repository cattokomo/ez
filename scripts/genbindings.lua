local nldecl = require 'nelua.plugins.nldecl'
local fs = require 'nelua.utils.fs'

nldecl.generate_bindings_file{
    output_head = [=[
##[[
cinclude "<curl/curl.h>"
linklib "curl"
]]
]=],
    output_file = 'ez/3rd/curl-bindings.nelua',
    parse_includes = {'<curl/curl.h>'},
    include_names = {
        '^curl',
        '^CURL',
        sockaddr = true,
        fd_set = true,
    }
}
