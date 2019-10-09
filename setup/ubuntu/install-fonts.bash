mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts && curl -fLo "Sauce Code Pro NerdFont Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf

fc-cache -f -v
