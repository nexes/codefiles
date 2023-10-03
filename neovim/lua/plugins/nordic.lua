function nordicConfig()
    require 'nordic'.load()
end

return {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 100,
    config = nordicConfig,
}
