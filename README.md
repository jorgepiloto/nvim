# Jorge's Neovim Configuration

<div align="center">
  <img width="640px;" src="https://github.com/jorgepiloto/nvim/raw/main/_static/neovim_logo.png"></img>
</div>
<br>

This repository contains Jorge's Neovim configuration. The configuration focuses
on minimalism, efficiency, and productivity.


## Installation

Install this configuration by executing the following command:

```text
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/jorgepiloto/nvim/main/INSTALL | sh
```


## About NEovimg configuration

Neovim supports Lua, as opposite ot Vim, whcih only works with VimScript. Lua is
a minimalistic interepted language. This allwos to extend and customizae the
bahvior of Neovim in a very simple way.

Noevim configuration follows [The XDG Specification], meaning that all its
dotfiles are found inside the `$XDG_CONFIG_HOME/nvim` directory. This folder
contains the following structure:

```tree
nvim
├── init.lua
├── INSTALL
├── lua
│   ├── autocmd.lua
│   ├── keymaps.lua
│   └── packer-plugins.lua
├── plugin
│   ├── lsp-zero.lua
│   ├── packer_compiled.lua
│   ├── telescope.lua
│   └── toggleterm.lua
├── README.md
└── _static
    └── neovim_logo.png
```

[The XDG Specification]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
