#!/usr/bin/env bash

cd ~/bin || exit

# Token is in ~/.config/eget/eget.toml

echo "• Updating eget..."
eget --quiet zyedidia/eget

echo "• Updating miniflux..."
eget --quiet miniflux/v2 --to="~/bin/miniflux"
echo "• Updating delta..."
eget dandavison/delta --asset musl.tar.gz
echo "• Updating micro..."
eget --quiet zyedidia/micro --asset static.tgz --asset ^tgz.sha
echo "• Updating pandoc..."
eget --quiet jgm/pandoc
echo "• Updating fzf..."
eget --quiet junegunn/fzf
echo "• Updating eza..."
eget --quiet eza-community/eza --asset musl.tar.gz
echo "• Updating starship..."
eget --quiet starship/starship --asset ^musl
echo "• Updating bat..."
eget --quiet sharkdp/bat --asset ^musl
echo "• Updating btop..."
eget --quiet aristocratos/btop
echo "• Updating duf..."
eget --quiet muesli/duf --asset x86_64.tar.gz
echo "• Updating caddy..."
eget --quiet caddyserver/caddy --asset amd64.tar.gz --asset ^.sig
echo "• Updating vale..."
eget --quiet errata-ai/vale --asset 64-bit.tar
echo "• Updating lapce..."
eget --quiet lapce/lapce --asset lapce-linux-amd64.tar.gz
echo "• Updating pdftilecut..."
eget --quiet oxplot/pdftilecut
echo "• Updating tealdeer..."
eget --quiet dbrgn/tealdeer
echo "• Updating fd..."
eget --quiet sharkdp/fd --asset x86_64-unknown-linux-musl.tar.gz
echo "• Updating pdfcpu..."
eget --quiet pdfcpu/pdfcpu
echo "• Updating sd..."
eget --quiet chmln/sd --asset ^gnu
echo "• Updating dog..."
eget --quiet ogham/dog --asset linux-gnu.zip --asset ^.zip.minisig
echo "• Updating doggo..."
eget --quiet mr-karan/doggo --asset Linux_x86_64.tar.gz
echo "• Updating koreader..."
eget --quiet koreader/koreader --asset .AppImage
echo "• Updating procs..."
eget --quiet dalance/procs
echo "• Updating lnav..."
eget --quiet tstack/lnav
echo "• Updating rg..."
eget --quiet BurntSushi/ripgrep --to="~/bin/rg"
echo "• Updating tlrc..."
eget --quiet tldr-pages/tlrc --asset=linux-gnu.tar.gz --file=tldr --to="~/bin/tldr"

echo
echo "These ones use debs..."

echo "• Updating ghostty..."
eget mkasberg/ghostty-ubuntu --asset=24.04.deb  --to /tmp/ghostty.deb && sudo apt install -qq /tmp/ghostty.deb
# echo "• Updating foliate..."
# eget johnfactotum/foliate --asset .deb --to /tmp/foliate.deb && sudo apt install -qq /tmp/foliate.deb
echo "Updating readset..."
eget readest/readest --asset amd64.deb --to /tmp/readset.deb && sudo apt install -qq /tmp/readset.deb
echo "• Updating obsidian..."
eget obsidianmd/obsidian-releases --asset amd64.deb --to /tmp/obsidianmd.deb && sudo apt install -qq /tmp/obsidianmd.deb


echo
echo "These ones always update, regardless..."

echo "• Updating zed..."
eget zed-industries/zed --asset zed-linux-x86_64.tar.gz --file=*.* --all --to ~/.local/
echo "• Updating cascadia-code font..."
eget microsoft/cascadia-code --file=ttf/*.ttf --all --to ~/.fonts
echo "• Updating rclone..."
sudo /home/duncan/bin/eget rclone/rclone --asset amd64.zip --to /usr/bin/rclone

