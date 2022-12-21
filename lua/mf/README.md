# Neovim Config

This is my Neovim config, all relevant things are inside the `mf` folder, so
you can also include it in your existing config.

## Structure

| Folder | Purpose                                   |
|--------|-------------------------------------------|
|`core`  | General configuration                     |
|`plug`  | Plugin specific configuration and loading |
|`extra` | Extra utility scripts and integration     |

3 directories


## Main features

These things are already pre-configured:

* Packer (for pkg management)
* Treesitter
* LSP
* Completion with `cmp`
* Lualine
* Telescope
* `mini.nvim` for general QoL improvements
* Base16 wrapper for `lualine` so it works nicely with `mini.base16`
* Extra scripts and tweaks

