package.path = package.path .. ";./deps/?.lua"

local lfs = require("lfs")
local fs = require("nelua.utils.fs")
local nldoc = require("nldoc")

for path in lfs.dir("ez") do
    path = fs.join(fs.curdir(), "ez", path)
    if path:match("%.nelua$") and not path:match("_%.nelua$")then
        local modulename = fs.basename(path):gsub("%..-$", "")
        local emitter = nldoc.Emitter.create()

        nldoc.generate_doc(emitter, path, {
            name = "`ez."..modulename.."`",
        })
        nldoc.write_file("./docs/"..modulename..".md", emitter:generate())
    end
end
