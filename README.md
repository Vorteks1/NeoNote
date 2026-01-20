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

**Dependencies:** Neovim ≥ 0.9, Git, ripgrep, fd

1. **Backup current config**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
2. **Clone**
   ```bash
   git clone https://github.com/YOURNAME/neonote.git ~/.config/nvim
3. **Launch**
   ```bash
   nvim
  Plugins install automatically on first run.
4. **Start Writeing**
  `<Leader>ff` → Find Note
  `<Leader>fg` → Live Grep
  `<Leader>fd` → Today's Daily Note

⌨️ Default Keys (leader = Space)

| | |
|-|-|
| `<Leader>ff` | Find Note |
| `<Leader>fg` | Live Grep |
| `<Leader>fd` | Open / create daily note |
| `<Leader>fw` | Toggle task checkbox |
| `<Leader>gp` | Glow preview (floating window) |
| `<Leader>xx` | Trim whitespace & save |
