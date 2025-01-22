return {
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
        
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function ()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    -- "arduino_language_server", -- Arduino
                    -- "astro", -- Astro
                    -- "bashls", -- Bash
                    -- "csharp_ls", -- C#
                    -- "clangd", -- C
                    -- "cmake", --CMake
                    "cssls", -- CSS
                    "tailwindcss", -- CSS
                    -- "ast_grep", -- Dart
                    "gopls", -- Go
                    -- "templ", -- Go Templ
                    -- "graphql", -- GraphQL
                    "html", -- HTML
                    -- "htmx", -- HTMX
                    -- "jdtls", -- Eclipse JAVA
                    "denols", -- Deno's built in TypeScript / JavsScript
                    "vtsls", -- VSCodes JS/TS language server
                    "jsonls", -- VSCodes JSON language server
                    -- "kotlin_language_server", -- Kotlin
                    "lua_ls", -- Lua
                    "ltex", -- LaTeX & Markdown
                    -- "phpactor", -- PHP
                    -- "buf_ls", -- Proto
                    -- "r_language_server", -- R
                    -- "rust_analyzer", -- Rust
                    -- "sqls", -- SQL
                    -- "svelte", -- Svelte
                    -- "swift_mesonls", -- Swift
                    "taplo", -- TOML
                    "vimls", -- VimScript
                    "lemminx", -- XML
                    "yamlls" -- YAML
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
        end
    }
}
