# dotArch
# MONK DOTFILES  

![Arch Linux](https://img.shields.io/badge/Arch-Linux-blue?logo=arch-linux)  
![Hyprland](https://img.shields.io/badge/Hyprland-WM-orange)  
![Neovim](https://img.shields.io/badge/Neovim-v0.9.0+-green?logo=neovim)  
![Kitty Terminal](https://img.shields.io/badge/Kitty-Terminal-yellow?logo=linux)  

---  

## ✨ Inspiration  
I like to personalize my environment to make my workflow easier at every step. My dotfiles are designed to maximize keyboard usage and minimize mouse usage as much as possible.  

Although these dotfiles were inspired by various sources, I've tweaked them to the point that I can confidently call them my own.  

---  

## 🛠 My Tools  
I use **Hyprland** as my window compositor on Arch Linux. Yes, I use *Arch, btw*.  

### Here's a quick overview of my tools:  
- **Neovim (Nvim)** running in **Kitty** terminal (I avoid GUI versions like Neovide, as they feel unnecessary).  
- **[LazyGit](https://github.com/jesseduffield/lazygit)** for Git management, both from the terminal and via a custom Lua function that opens it in a floating terminal inside Neovim.  
- **[Tmux](https://github.com/tmux/tmux)** for managing multiple projects and processes, which I believe drastically improves my productivity. I've remapped several default keybindings to better fit my workflow.  
- **[Ranger](https://github.com/ranger/ranger)** as my terminal file manager — simple and sufficient for daily usage.  

---  

## 📦 Neovim Setup  
## 🔧 Installation

Follow the steps below to try out my **LazyVim**-based Neovim setup from the `main` branch.

### 📜 Prerequisites  
Ensure you have:  
- **Neovim 0.9+** installed.  
- A backup of your current Neovim configuration (just in case).

### 🚀 Steps to Install  
1. **Clone the repository**:  
```bash  
git clone -b main git@github.com:devnchill/Neovim ~/.config/nvim  
```

2. **Launch Neovim**:  
```bash  
nvim  
```

3. **LazyVim will handle the rest** by automatically installing plugins on the first run.

---

## 🗑️ Removing the Configuration  
To completely remove my configuration, run the following commands:

1. **Delete the Neovim config folder**:  
```bash  
rm -rf ~/.config/nvim  
```

2. **Delete the Neovim data folder**:  
```bash  
rm -rf ~/.local/share/nvim  
```

3. **Delete the Neovim cache folder**:  
```bash  
rm -rf ~/.cache/nvim  
```

4. **Remove the Neovim state folder**:  
```bash  
rm -rf ~/.local/state/nvim  
```

---

## 🧩 Switching Branches  
I have 3 branches at the moment and might change with time . README might not be upto date so checkout the branches directory from github repo.
Stow branch is where I'm managing my dotfiles with GNU Stow , a dtofiles manager which creates symilnks for my dotfiles .

To try out configs from different branches . You have to run this command .
```bash
#First navigate inside the repo
cd dotArch 
#switch branch
git checkout <branchname>
```
If you want to try out my old config from the `nvim/scratch` branch, follow these steps:

1. **Navigate to your Neovim config folder**:  
```bash  
cd dotArch
```

2. **Switch to the `scratch` branch**:  
```bash  
git checkout nvim/scratch  
```

3. **Launch Neovim**:  
```bash  
nvim  
```

---

## 📸 Preview  
Here’s a sneak peek of my **Neovim** setup:

<img src="./assets/preview.png">
---

## 📦 Folder Structure  
```plaintext  
# Neovim Configuration Structure
~/.config/nvim  
├── init.lua  
├── lazy-lock.json  
├── lazyvim.json  
├── LICENSE  
├── lua  
│   └── config  
│       ├── autocmds.lua  
│       ├── keymaps.lua  
│       ├── lazy.lua  
│       ├── options.lua  
│       └── terminal.lua  
├── lua  
│   └── plugins  
│       ├── colorscheme.lua  
│       ├── example.lua  
│       ├── jaq.lua  
│       └── tmux-navigator.lua  
└── stylua.toml  
```

---

## ⚡ Plugins  
The `main` branch is built using **LazyVim**, which includes the following custom files under `lua/config`:  
- **`autocmds.lua`**  
- **`keymaps.lua`**  
- **`lazy.lua`**  
- **`options.lua`**  
- **`terminal.lua`**  

Feel free to explore and modify them!

---

## 🧑‍💻 Author  
**MONK** ([@DevNChill](https://github.com/devnchill))  
Happy coding! 🚀  
---  

## 💻 Hyprland Tools  
| Tool                 | Description               | Link |
|----------------------|---------------------------|------|
| Waybar               | Status bar for Wayland     | [Waybar](https://github.com/Alexays/Waybar) |
| Sway Notification Center | Notification system     | [SwayNC](https://github.com/jJPoohs/swaync) |
| HyprSwitch           | Application switcher       | [HyprSwitch](https://github.com/hyprwm/Hyprland) |
| Rofi                 | Application launcher       | [Rofi](https://github.com/davatorium/rofi) |
| Swww                 | Wallpaper manager          | [Swww](https://github.com/Horus645/swww) |

---

## 🖼️ Preview  
Here’s a quick preview of my setup:  

<img src="./assets/img1.png">
<img src="./assets/img2.png">
<img src="./assets/img3.png">

Feel free to customize this further to match your preferences!
