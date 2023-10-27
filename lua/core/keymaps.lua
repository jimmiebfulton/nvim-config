local keys = require("utils.keys")

keys.set_leader(" ")
keys.map({ "i" }, "<M-Bs>", "<C-W>", "Alt Backspace")
keys.map({ "i" }, "<M-Del>", "<C-O>dw", "Alt Delete")

keys.map({ "n" }, "<S-Left>", "<C-w>h", "Move Left")
keys.map({ "n" }, "<S-Right>", "<C-w>l", "Move Left")
keys.map({ "n" }, "<S-Up>", "<C-w>k", "Move Up")
keys.map({ "n" }, "<S-Down>", "<C-w>j", "Move Down")

