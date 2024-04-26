local nldecl = require 'nelua.plugins.nldecl'
local fs = require 'nelua.utils.fs'

if not fs.isfile('ez/3rd/curl-bindings.nelua') then
    nldecl.generate_bindings_file{
        output_file = 'ez/3rd/curl-bindings.nelua',
        parse_includes = {'<curl/curl.h>'},
        include_names = {
            '^curl',
            '^CURL',
            sockaddr = true,
            fd_set = true,
        }
    }
end
