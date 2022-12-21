# Neovim Config

This is my Neovim config, all relevant things are inside the `mf` folder, so
you can also include it in your existing config.

## Structure

Main files that are relevant to the editor as a whole are in `mf`, everything
is initialized by `init.lua`. Files in `conf` are for plugin configuration and
loading, files in `extra` are extra scripts to enhance the overall experience.

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
* + Extra scripts and tweaks

