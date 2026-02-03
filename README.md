# NeoVim Configuration

A modern, optimized NeoVim setup tailored for C++, Python, and Java development built on AstroNvim.

---

## Prerequisites

Before installing this configuration, ensure your terminal is set up with a Nerd Font for proper icon display.

**Recommended Font:** [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)

> Browse all available Nerd Fonts at [nerdfonts.com](https://www.nerdfonts.com/font-downloads)

---

## Installation

### 1. Install Dependencies

Install NeoVim and required system packages (fedora command):

```bash
sudo dnf install neovim python3 python3-pip git curl ripgrep fd-find python3-neovim
pip3 install pynvim
```

### 2. Clone Configuration

Download and set up the configuration files:

```bash
cd ~/.config/
git clone -b AstroNvim https://github.com/cw-0/NeoVim-Config.git
mv NeoVim-Config/nvim .
rm -rf NeoVim-Config
```

### 3. Initial Launch

Start NeoVim to trigger plugin installation:

```bash
nvim
```

---

## Configuration

### Language Server Protocols (LSP)

Install language servers for intelligent code completion and analysis:

```vim
:LspInstall pyright    " Python
:LspInstall clangd     " C++
:LspInstall jdtls      " Java
:LspInstall lua_ls     " Lua
```

### Syntax Parsers

Install TreeSitter parsers for enhanced syntax highlighting:

```vim
:TSInstall python      " Python
:TSInstall cpp         " C++
:TSInstall c           " C
:TSInstall java        " Java
:TSInstall lua         " Lua
```

### Debug Adapters

Set up debugging capabilities:

```vim
:DapInstall python     " Python debugger
:DapInstall codelldb   " C++ debugger
:DapInstall javadbg    " Java debugger
```

---

## Maintenance

### Plugin Management

Keep your plugins up to date with these commands:

| Command | Shortcut | Description |
|---------|----------|-------------|
| `:Lazy check` | `<Leader>pu` | Check for plugin updates |
| `:Lazy update` | `<Leader>pU` | Apply pending updates |
| `:Lazy sync` | `<Leader>pS` | Update and clean plugins |
| `:Lazy clean` | — | Remove unused plugins |

### Complete System Update

Update both plugins and Mason packages:

```vim
:AstroUpdate           " or use <Leader>pa
```

---

## Verification

After installation and configuration, verify your setup:

**Exit NeoVim** with  ```         ```

**Restart NeoVim** and run the health check:

```vim
:checkhealth
```

This command will report any issues with your installation and provide guidance for fixing them.

---

## Quick Reference

### Key Bindings

- `<Leader>` is typically set to `Space`
- `<Leader>pu` - Check for plugin updates
- `<Leader>pU` - Update plugins
- `<Leader>pS` - Sync plugins
- `<Leader>pa` - AstroUpdate (full system update)
- `Shift + Q` - Quit NeoVim

---

## Troubleshooting

If you encounter issues:

1. Ensure all dependencies are installed correctly
2. Run `:checkhealth` to identify specific problems
3. Verify your Nerd Font is properly configured in your terminal
4. Check that Python support is working: `:echo has('python3')`

---

## Resources

- [AstroNvim Documentation](https://docs.astronvim.com/)
- [NeoVim Documentation](https://neovim.io/doc/)
- [Nerd Fonts](https://www.nerdfonts.com/)

---

**Repository:** [github.com/cw-0/NeoVim-Config](https://github.com/cw-0/NeoVim-Config)
