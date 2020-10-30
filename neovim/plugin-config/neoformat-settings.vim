" settings for code formating

" formating for cpp and c files
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style=
                    \"{BasedOnStyle: Google,
                    \ UseTab: Never,
                    \ IndentWidth: 4,
                    \ TabWidth: 4,
                    \ Cpp11BracedListStyle: true,
                    \ BreakBeforeBraces: Custom,
                    \ BraceWrapping: {AfterFunction: true, AfterClass: true, AfterStruct: true,
                    \ BeforeCatch: true, AfterControlStatement: false},
                    \ AllowShortIfStatementsOnASingleLine: true,
                    \ NamespaceIndentation: All,
                    \ IndentCaseLabels: false,
                    \ ColumnLimit: 0,
                    \ AccessModifierOffset: -4}"'
                \]
\}

let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

