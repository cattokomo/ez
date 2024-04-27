local nldecl = require "nelua.plugins.nldecl"
local fs = require "nelua.utils.fs"

nldecl.generate_bindings_file{
    output_head = [=[
##[[
cinclude "<curl/curl.h>"
linklib "curl"
]]
]=],
    output_file = "ez/3rd/curl-bindings.nelua",
    parse_includes = {"<curl/curl.h>"},
    include_names = {
        "^curl",
        "^CURL",
        sockaddr = true,
        fd_set = true,
    }
}

nldecl.generate_bindings_file{
    output_head = [=[
##[[
cinclude "<pthread.h>"
cflags "-pthread"
]]
]=],
    output_file = "ez/3rd/pthread-bindings.nelua",
    parse_includes = {"<pthread.h>"},
    include_names = {
        "^pthread",
        sched_param = true,
        timespec = true,
        pthread_t = true,
        pthread_key_t = true,
    }
}
