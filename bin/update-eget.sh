#!/usr/bin/env bash

cd ~/bin || exit

# Token is in ~/.config/eget/eget.toml

echo -n "• Updating eget...        "
eget zyedidia/eget

echo -n "• Updating watchexec...   "
eget watchexec/watchexec --asset linux-gnu.tar.xz --asset ^xz.b3 --asset ^xz.sha512
echo -n "• Updating just...        "
eget casey/just
echo -n "• Updating miniflux...    "
eget miniflux/v2 --to="~/bin/miniflux"
echo -n "• Updating delta...       "
eget dandavison/delta --asset musl.tar.gz
echo -n "• Updating micro...       "
eget zyedidia/micro --asset static.tgz --asset ^tgz.sha
echo -n "• Updating pandoc...      "
eget jgm/pandoc
echo -n "• Updating fzf...         "
eget junegunn/fzf
echo -n "• Updating eza...         "
eget eza-community/eza --asset musl.tar.gz
echo -n "• Updating starship...    "
eget starship/starship --asset ^musl
echo -n "• Updating bat...         "
eget sharkdp/bat --asset ^musl
echo -n "• Updating btop...        "
eget aristocratos/btop
echo -n "• Updating duf...         "
eget muesli/duf --asset x86_64.tar.gz
echo -n "• Updating caddy...       "
eget caddyserver/caddy --asset amd64.tar.gz --asset ^.sig
echo -n "• Updating vale...        "
eget errata-ai/vale --asset 64-bit.tar
echo -n "• Updating lapce...       "
eget lapce/lapce --asset lapce-linux-amd64.tar.gz
echo -n "• Updating pdftilecut...  "
eget oxplot/pdftilecut
echo -n "• Updating fd...          "
eget sharkdp/fd --asset x86_64-unknown-linux-musl.tar.gz
echo -n "• Updating pdfcpu...      "
eget pdfcpu/pdfcpu
echo -n "• Updating sd...          "
eget chmln/sd --asset ^gnu
echo -n "• Updating dog...         "
eget ogham/dog --asset linux-gnu.zip --asset ^.zip.minisig
echo -n "• Updating doggo...       "
eget mr-karan/doggo --asset Linux_x86_64.tar.gz
echo -n "• Updating koreader...    "
eget koreader/koreader --asset .AppImage
echo -n "• Updating procs...       "
eget dalance/procs
echo -n "• Updating lnav...        "
eget tstack/lnav
echo -n "• Updating rg...          "
eget BurntSushi/ripgrep --to="~/bin/rg"
echo -n "• Updating tlrc...        "
eget tldr-pages/tlrc --asset=linux-gnu.tar.gz --file=tldr --to="~/bin/tldr"

echo
echo "These ones use debs..."

#echo "• Updating ghostty..."
#eget mkasberg/ghostty-ubuntu --asset=24.04.deb  --to /tmp/ghostty.deb && sudo apt install -qq /tmp/ghostty.deb
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
