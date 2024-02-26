return {
    "ggandor/leap.nvim",
    name = "leap",

    config = function()
        local leap = require("leap")
        leap.create_default_mappings()
    end
}
