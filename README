# dotfiles

GNU Stow でローカル設定を管理するリポジトリ。

## パッケージ

- `home/zsh`: `.zshrc`, `.zshenv`, `.zprofile`
- `home/shell`: `.bash_profile`, `.profile`, `.node-version`, `.nuxtrc`
- `home/git`: `.gitconfig`, `.config/git/ignore`
- `home/nvim`: `.config/nvim/init.lua`, `.config/nvim/lazy-lock.json`
- `home/wezterm`: `.config/wezterm/wezterm.lua`, `.config/wezterm/keybinds.lua`
- `home/mise`: `.config/mise/config.toml`
- `home/gh`: `.config/gh/config.yml`
- `home/ssh`: `.ssh/config`

## セットアップ

1. `stow` をインストール
2. リポジトリルートで実行

```bash
scripts/doctor.sh
scripts/link.sh
```

## 運用ルール

- 秘密情報はコミットしない
- 機密・生成物の除外は `.gitignore` で管理
- 管理方針と比較は `docs/dotfiles-strategy.md` を参照
