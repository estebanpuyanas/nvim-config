# Welcome to my Neovim Configuration repository!

I built this config because I have been curious about neovim, simplifying my coding workflow, and learning more 
about my computer's operating system and the terminal. 

I built this config by watching ThePrimeAgen's 0 to LSP: Neovim RC From Scratch to have a guide as I built the config and
my understanding of neovim as a whole. Nevertheless, given that tutotrial is quite outdated, I am not using some of the 
plugins he uses, nor am I using some of the remaps he does.

## Repository Structure

Given this is my first neovim config, I didn't want to use a popular distro like lazynvim, and I decided I wanted to have 
a simple and easy to understand modular build. Here is the repository structure:

```
~/.config/nvim/
├── init.lua <— config-wide requirements (calls everything under estebanpuyanas/, config.lazy, config.lsp).
├── lua/
|  |├── config/
|  |├── lazy.lua <— Bootstrap lazy.nvim.
|  |└── lsp.lua <— Setup Mason and autocomplete, snippets.
│ ├── estebanpuyanas/
│   │   ├── init.lua <— Calls everything in this directory.
│   │   ├── remap.lua <— Config wide remaps
│   │   └── set.lua <— Miscellaneous settings like line numbers, tabs, swapfiles, backups, current line highlight, etc.
│  └── plugins/
│       ├── init.lua
│       ├── autopairs.lua
│	├── colorscheme.lua <— OneDark theme inspired from Atom OneDark Pro. 
│	├── dashboard.lua <— If Nvim is opened as ‘nvim <tab>’ it will open a dashboard to find recent files, grep text, update plugins, or modify config.
│	├── fugitive.lua <— Git. 
│	├── icons.lua <— Nerd font & icons.
│	├── lsp.lua <— Builds LSP from Mason & nvim-lspconfig
│	├── lualine.lua <— Provides status bar at the bottom of terminal window (Ghostty does not implement natively but other terminal emulators like Alacritty do)
│	├── nvimtree.lua <—  Tree file explorer (want to remove once im more comfortable with telescope and non-visual guide to project structure)
│	├── telescope.lua <— Find recent files, grep text, etc.
│	├── treesitter.lua
│	├── undotree.lua <— Check work history and undo up to any saved point.
│       └── vimbegood.lua <— For training vim motions.
```

## Installing the Configuration

First backup your current config if you have one and remove it  from the `~/config/nvim` directory. Then clone this repo with
the following command: 
1. Linux/MacOS: `git clone https://github.com/estebanpuyanas/nvim-config ~/.config/nvim && nvim`
2. FlatPack: `git clone https://github.com/estebanpuyanas/nvim-config ~/.var/app/io.neovim.nvim/config/nvim && flatpak run io.neovim.nvim`
3. Windows CmdPrompt: `git clone https://github.com/estebanpuyanas/nvim-config %USERPROFILE%\AppData\Local\nvim && nvim`
4. Windows PowerShell: `git clone https://github.com/estebanpuyanas/nvim-config $ENV:USERPROFILE\AppData\Local\nvim && nvim`


Then run open your terminal and run the `Lazy sync` command to update the config and you should be good to go!


