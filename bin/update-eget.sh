#!/usr/bin/env bash

cd ~/bin || exit

echo -e "\nUpdating eget..."
eget zyedidia/eget

echo -e "\nUpdating micro..."
eget zyedidia/micro --asset static
echo -e "\nUpdating pandoc..."
eget jgm/pandoc
echo -e "\nUpdating fzf..."
eget junegunn/fzf
echo -e "\nUpdating exa..."
eget ogham/exa --asset ^musl
echo -e "\nUpdating starship..."
eget starship/starship --asset ^musl
echo -e "\nUpdating rg..."
eget BurntSushi/ripgrep
echo -e "\nUpdating bat..."
eget sharkdp/bat --asset ^musl
echo -e "\nUpdating btop..."
eget aristocratos/btop
echo -e "\nUpdating duf..."
eget muesli/duf --asset x86_64.tar.gz
echo -e "\nUpdating caddy..."
eget caddyserver/caddy --asset amd64.tar.gz --asset ^.sig
echo -e "\nUpdating vale..."
eget errata-ai/vale --asset 64-bit.tar
echo -e "\nUpdating lapce..."
eget lapce/lapce --asset Lapce-linux.tar.gz
echo -e "\nUpdating pdftilecut..."
eget oxplot/pdftilecut
echo -e "\nUpdating tealdeer..."
eget dbrgn/tealdeer
echo -e "\nUpdating broot..."
eget Canop/broot --file=x86_64-linux/broot
echo -e "\nUpdating fd..."
eget sharkdp/fd --asset x86_64-unknown-linux-musl.tar.gz

echo -e "\nUpdating cascadia-code font..."
eget microsoft/cascadia-code --file=ttf/*.ttf --all --to ~/.fonts

echo -e "\nUpdating rclone..."
sudo /home/duncan/bin/eget rclone/rclone --asset amd64.zip --to /usr/bin