local keys = require("utils.keys")

keys.set_leader(" ")
keys.map({ "i" }, "<M-Bs>", "<C-W>", "Alt Backspace")
keys.map({ "i" }, "<M-Del>", "<C-O>dw", "Alt Delete")

