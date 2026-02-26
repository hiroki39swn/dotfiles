# dotfiles 管理方式の調査メモ

## よく使われる管理方式

1. bare Git repository（`$HOME` を work-tree にする方式）
2. GNU Stow（リポジトリ内のファイルを symlink 管理）
3. chezmoi（テンプレート、暗号化、マシン差分に強い専用ツール）
4. yadm（Git ベース + bootstrap/alternates などの機能を追加）

## 比較（実運用観点）

- bare Git repository
  - 長所: 追加ツールが不要、仕組みがシンプル
  - 短所: `$HOME` 直管理なので除外設計を誤ると扱いづらい
- GNU Stow
  - 長所: 構造が明確、アプリ単位の分離がしやすい
  - 短所: 秘密情報や複雑な条件分岐は別設計が必要
- chezmoi
  - 長所: テンプレート、暗号化、ホスト差分管理が強力
  - 短所: 学習コストが上がる
- yadm
  - 長所: bootstrap/alternates で環境差分を扱いやすい
  - 短所: ツール依存が増える

## このリポジトリの採用案

- 初期は **GNU Stow ベース** で開始
- 補助として `bootstrap` と `doctor` スクリプトを持ち、セットアップ手順を固定化
- ホスト差分は `scripts/hosts/` に分離
- 秘密情報は 1Password / keychain / `.local` ファイルなど、Git 管理外で注入

理由:

- まず壊れにくく理解しやすい構造で運用を開始できる
- 将来、テンプレートや暗号化要件が増えた時に chezmoi へ段階移行しやすい

## 参考にした資料

- GNU Stow manual（symlink farm の設計意図）
  - https://www.gnu.org/software/stow/manual/stow.html
- chezmoi docs（managed state / add / apply の運用）
  - https://www.chezmoi.io/
- yadm docs（bootstrap / alternates 機能）
  - https://yadm.io/docs/
- Atlassian: bare repository方式の代表的な解説
  - https://www.atlassian.com/git/tutorials/dotfiles
- ArchWiki: Dotfiles の各方式の整理
  - https://wiki.archlinux.org/title/Dotfiles

