# NeoVim-Config Installation Guide |  C++ and Python Focused

## Step 0: Set terminal to a "Nerd Font"
Set your terminal font to any [Nerd Font](https://www.nerdfonts.com/font-downloads). Example: FiraCode Nerd Font.

## Step 1: Install NeoVim and Python Support 
```
sudo dnf install neovim python3 python3-pip git curl ripgrep fd-find python3-neovim
pip3 install pynvim
```
# Step 2: Download Config File.
```
git clone https://github.com/cw-0/NeoVim-Config ~/.config/
```

# Step 3: Launch Neovim
```
nvim
```
# Step 4: Install Plugins and Tools
* Hold shift and press Q
Run:
```
  :MasonInstallAll
  :Lazy sync
  :PlugInstall nvim-treesitter
  :TSUpdate
  :TSInstall python
```

# Step 5: Quit NeoVim
```
sudo reboot now
```
# Step 6: Run again and Verify Working Install
```
:checkhealth
```

