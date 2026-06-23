# My Neovim + tmux setup

My personal [LazyVim](https://github.com/LazyVim/LazyVim)-based Neovim config, plus my `tmux.conf`. Everything needed to reproduce my editor on a new machine lives here.

## What's inside

- **Base:** LazyVim on top of Neovim
- **Colorscheme:** tokyonight, fully transparent (sidebars + floats)
- **File explorer:** snacks.explorer (neo-tree disabled), shows dotfiles + gitignored files by default
- **Fuzzy finders:** Telescope (`<leader><leader>` find files) and snacks.picker — both set to open in normal mode
- **Markdown:** inline rendering via render-markdown + browser preview via markdown-preview.nvim
- **Colors:** inline color swatches via nvim-highlight-colors
- **Language extras:** C/C++ (clangd), Go, Java, Markdown, Python
- **tmux:** custom `tmux.conf` (includes `renumber-windows`)

Plugin versions are pinned in `lazy-lock.json` so installs are reproducible.

## Install on a new machine

```bash
# 1. prerequisites
brew install neovim tmux ripgrep fd lazygit node go   # + any other language toolchains

# 2. clone this config
git clone git@github.com:mateidumitrascu/nvim-config.git ~/.config/nvim

# 3. link tmux config (lives inside this repo)
ln -s ~/.config/nvim/tmux.conf ~/.tmux.conf

# 4. launch — lazy.nvim auto-installs every plugin at pinned versions
nvim
```

## Keeping it in sync

After changing any config:

```bash
cd ~/.config/nvim
git add -A && git commit -m "update config" && git push
```

## Structure

```
init.lua              entry point
lua/config/           options, keymaps, autocmds, lazy bootstrap
lua/plugins/          plugin specs & overrides
lazy-lock.json        pinned plugin versions
lazyvim.json          enabled LazyVim extras
tmux.conf             tmux configuration
```
