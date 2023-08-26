require("base")
require("plugins")
require("lsp")
require("lspkind")

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    disable_netrw = true,
    view = {
        width = 23,
    },
    renderer = {
        root_folder_label = false,
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

require("bufferline").setup{
    options = {
        fill = {
            bg = "#181818",
        },
        mode = "tabs",
        offsets = {
            {
                filetype = "NvimTree",
                text = "EXPLORER",
                highlight = "Directory",
                text_align = "center"
            }
        }
    }
}

require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp", "python", "lua", "rust", "vim", "javascript", "json", "markdown", "markdown_inline"},
    sync_install = true,
    highlight = {
        enable = true
    },
    additional_vim_regex_highlighting = true,
}

require("indent_blankline").setup {
    indentLine_enabled = 1,
    filetype_exclude = {
        "help",
        "terminal",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "NvimTree",
        "mason",
    },
    buftype_exclude = { "terminal" },
    show_trailing_blankline_indent = false,
    show_first_indent_level = true,
    show_last_indent_level = false,
    show_current_context = true,
    show_current_context_start = false,
}
