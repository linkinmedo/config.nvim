require("dotenv").eval(vim.fn.stdpath("config") .. "/.env")

require("config.lazy")
require("options")
require("mappings")
