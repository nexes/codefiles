-- formatter config
require'formatter'.setup {
    logging = false,
    filetype = {
        rust = {
            -- Rustfmt
            function()
                return {
                    exe = "rustfmt",
                    args = {"--emit=stdout"},
                    stdin = true
                }
            end
        },
        cpp = {
            -- clang-format
            function()
                return {
                    exe = "clang-format",
                    args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                    stdin = true,
                    cwd = vim.fn.expand('%:p:h') -- run clang-format in cwd of the file
                }
            end
        }
    }
}

-- format on save
vim.api.nvim_exec([[
augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.rs,*.cpp,*.c,*.h FormatWrite
augroup END
]], true)
