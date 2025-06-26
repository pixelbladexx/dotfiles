# 🎯 Pixel's Dotfiles

> My personal Arch Linux dotfiles — built for speed, minimalism, and full control over my dev environment.

---

## 📦 Features

- 🐚 **Zsh** + `oh-my-zsh` + `starship` for a sexy terminal
- 🧠 **Neovim** as my main code editor
- 🪟 **Polybar**, `rofi`, `picom`, and more for desktop rice
- 🎨 **Gruvbox & Kvantum themes** for aesthetic consistency
- 🎧 Audio setup via **PipeWire**
- ⚡ Common CLI tools: `bat`, `fd`, `fzf`, `ripgrep`, `btop`, etc.
- 💾 Clean structure for easy version control & portability

---

## 🧠 Philosophy

These dotfiles are managed using a **bare Git repo**, which lets me version control my entire `$HOME` without polluting it with a `.git` folder.

---

## 🔧 Installation (on a new system)

1. Clone the repo as a bare repo into `~/.dotfiles`:

```bash
git clone --bare https://github.com/pixelbladexx/dotfiles.git $HOME/.dotfiles
