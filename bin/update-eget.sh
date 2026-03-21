#!/usr/bin/env bash

cd ~/bin || exit

# Token is in ~/.config/eget/eget.toml

echo -n "• Updating eget...         "; eget zyedidia/eget

echo -n "• Updating bat...          "; eget sharkdp/bat --asset ^musl
echo -n "• Updating btop...         "; eget aristocratos/btop
echo -n "• Updating caddy...        "; eget caddyserver/caddy --asset amd64.tar.gz --asset ^.sig
echo -n "• Updating delta...        "; eget dandavison/delta --asset musl.tar.gz
echo -n "• Updating doggo...        "; eget mr-karan/doggo --asset Linux_x86_64.tar.gz
echo -n "• Updating duf...          "; eget muesli/duf --asset x86_64.tar.gz
echo -n "• Updating eza...          "; eget eza-community/eza --asset musl.tar.gz
echo -n "• Updating fd...           "; eget sharkdp/fd --asset x86_64-unknown-linux-musl.tar.gz
echo -n "• Updating fzf...          "; eget junegunn/fzf
echo -n "• Updating hyperfine...    "; eget sharkdp/hyperfine --asset linux-musl.tar.gz
echo -n "• Updating just...         "; eget casey/just
echo -n "• Updating koreader...     "; eget koreader/koreader --asset x86_64.AppImage --to="~/Applications/"
echo -n "• Updating lapce...        "; eget lapce/lapce --asset lapce-linux-amd64.tar.gz
echo -n "• Updating lnav...         "; eget tstack/lnav
echo -n "• Updating micro...        "; eget zyedidia/micro --asset static.tar.gz --asset ^tar.gz.sha
echo -n "• Updating mise...         "; eget jdx/mise --asset linux-x64-musl.tar.xz
echo -n "• Updating pandoc...       "; eget jgm/pandoc
echo -n "• Updating pdfcpu...       "; eget pdfcpu/pdfcpu
echo -n "• Updating pdftilecut...   "; eget oxplot/pdftilecut
echo -n "• Updating procs...        "; eget dalance/procs
echo -n "• Updating psst...         "; eget jpochyla/psst
echo -n "• Updating rg...           "; eget BurntSushi/ripgrep --to="~/bin/rg"
echo -n "• Updating sd...           "; eget chmln/sd --asset ^gnu
echo -n "• Updating shellcheck...   "; eget koalaman/shellcheck
echo -n "• Updating sigil...        "; eget Sigil-Ebook/Sigil --asset x86_64.AppImage --asset ^.zsync --to="~/Applications/"
echo -n "• Updating sonar...        "; eget RasKrebs/sonar
echo -n "• Updating starship...     "; eget starship/starship --asset ^musl
echo -n "• Updating syncthingtray..."; eget Martchus/syncthingtray --asset=syncthingtray --asset=x86_64-pc-linux-gnu.tar.xz --asset=^.sig
echo -n "• Updating tlrc...         "; eget tldr-pages/tlrc --asset=linux-gnu.tar.gz --file=tldr --to="~/bin/tldr"
echo -n "• Updating vale...         "; eget errata-ai/vale --asset 64-bit.tar
echo -n "• Updating watchexec...    "; eget watchexec/watchexec --asset linux-gnu.tar.xz --asset ^xz.b3 --asset ^xz.sha512

echo
echo "These ones use debs..."

#echo "• Updating ghostty..."
#eget mkasberg/ghostty-ubuntu --asset=24.04.deb  --to /tmp/ghostty.deb && sudo apt install -qq /tmp/ghostty.deb
echo "• Updating navidrome..."
eget navidrome/navidrome --asset .deb --to /tmp/navidrome.deb && sudo apt install -qq /tmp/navidrome.deb
echo "Updating readset..."
eget readest/readest --asset amd64.deb --asset ^.sig --to /tmp/readset.deb && sudo apt install -qq /tmp/readset.deb
echo "• Updating obsidian..."
eget obsidianmd/obsidian-releases --asset amd64.deb --to /tmp/obsidianmd.deb && sudo apt install -qq /tmp/obsidianmd.deb
echo "• Updating AppImageLauncher..."
eget TheAssassin/AppImageLauncher --asset amd64.deb --to /tmp/appimagelauncher.deb && sudo apt install -qq /tmp/appimagelauncher.deb
echo "• Updating Strawberry Music Player..."
eget strawberrymusicplayer/strawberry --asset strawberry_ --asset noble_amd64.deb --to /tmp/strawberry.deb && sudo apt install -qq /tmp/strawberry.deb

echo
echo "These ones always update, regardless..."

echo -n "• Updating zed...         "; eget zed-industries/zed --asset zed-linux-x86_64.tar.gz --file=*.* --all --to ~/.local/
echo -n "• Updating cascadiacode..."; eget microsoft/cascadia-code --file=ttf/*.ttf --all --to ~/.fonts
echo -n "• Updating rclone...      "; sudo ~/bin/eget rclone/rclone --asset amd64.zip --to /usr/bin/rclone
echo -n "• Updating miniflux...    "; sudo ~/bin/eget miniflux/v2 --to="/usr/bin/miniflux"
