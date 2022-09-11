# Jorge's Neovim Configuration

<div align="center">
  <img width="640px;" src="https://github.com/jorgepiloto/nvim/raw/main/_static/neovim_logo.png"></img>
</div>
<br>

This repository contains Jorge's Neovim configuration. The configuration focuses
on minimalism, efficiency, and productivity.

## About NEovimg configuration

Neovim supports Lua, as opposite ot Vim, whcih only works with VimScript. Lua is
a minimalistic interepted language. This allwos to extend and customizae the
bahvior of Neovim in a very simple way.

Noevim configuration follows [The XDG Specification], meaning that all its
dotfiles are found inside the `$XDG_CONFIG_HOME/nvim` directory. This folder
contains the following structure:

```tree
|- nvim/
   |- init.lua
   |- lua/
      |- base.lua
      |- keymaps.lua
      |- plugins.lua
   | plugin/
   | after/plugin
```
