<p align="center">
  <img src="logo.svg" alt="NeoNote" width="140">
</p>

<h1 align="center">NeoNote</h1>

<p align="center">
  <b>Terminal-only Neovim distro for Markdown note-taking</b><br>
  Zero browsers • Zero bloat • Just open & write
</p>

<p align="center">
  <a href="#quick-start">Quick Start</a> •
  <a href="#features">Features</a> •
  <a href="#keys">Keymaps</a> •
  <a href="#customise">Customise</a>
</p>

---

## ✨ Features

| | |
|-|-|
| 🖥️ **Pure terminal** | glow preview, images via Kitty/WezTerm |
| 🔗 **Wiki links** | `[[note]]` auto-complete + back-links |
| ⚡ **Telescope** | fuzzy finder locked to your notes folder |
| ✅ **Tasks** | `- [ ]` toggle, highlight, quick-list |
| 📅 **Daily notes** | calendar picker + date templates |
| 🧩 **Modular** | delete any `lua/plugins/xx-*.lua` to drop a feature |

---

## ⚡ Quick Start

1. **Backup current config**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
Clone
bash
Copy

git clone https://github.com/YOURNAME/neonote.git ~/.config/nvim

Launch
bash

    Copy

    nvim

    Plugins install automatically on first run.
    Start writing
        <Space>ff → find note
        <Space>fg → live grep
        <Space>fd → today’s daily note

⌨️ Default Keys (leader = Space)
Table
Copy
Key	Action
<Space>ff	Find note (Telescope)
<Space>fg	Grep notes
<Space>fd	Open / create daily note
<Space>fw	Toggle task checkbox
<Space>gp	Glow preview (floating window)
<Space>xx	Trim whitespace & save
🎨 Switch Theme
Colourschemes live in lua/themes/.
Keep only one file (or raise its priority) to activate.
⚙️ Customise
User tweaks go in lua/user/init.lua (git-ignored).
Example:
lua
Copy

-- lua/user/init.lua
vim.opt.number = false
vim.g.notes_root = "~/Dropbox/vault"

🧹 Uninstall
bash
Copy

rm -rf ~/.config/nvim
# restore old config if you kept it
mv ~/.config/nvim.bak ~/.config/nvim

📜 License
MIT - do whatever you want.
