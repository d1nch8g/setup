yay -Sy --needed --noconfirm visual-studio-code-bin docker telegram-desktop chromium yandex-music-player nodejs-nativefier flutter buf-bin golangci-lint-bin protoc-gen-go-grpc meson ninja appimagelauncher qemu-desktop edk2-ovmf archiso archinstall

echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.bashrc

dart pub global activate protoc_plugin

nativefier --name kuma https://kuma.dancheg97.ru
cp /home/dancheg97/os/kuma.desktop ~/.local/share/applications/kuma.desktop
nativefier --name drone https://drone.dancheg97.ru
cp /home/dancheg97/os/drone.desktop ~/.local/share/applications/drone.desktop

go install github.com/ktr0731/evans@latest
go install mvdan.cc/gofumpt@latest

systemctl start docker.service
systemctl enable docker.service
usermod -aG docker dancheg97

cd ~
git clone https://dancheg97.ru/dancheg97/os
git clone https://dancheg97.ru/dancheg97/ctrlos
git clone https://dancheg97.ru/dancheg97/grpclicker_vscode
git clone https://dancheg97.ru/dancheg97/fluepkg
git clone https://dancheg97.ru/dancheg97/flueos
git clone https://dancheg97.ru/dancheg97/gnome-archinstall
wget https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage
cd os

code --install-extension dancheg97.grpc-clicker &
code --install-extension esbenp.prettier-vscode &
code --install-extension ms-azuretools.vscode-docker &
code --install-extension ms-vscode-remote.remote-containers &
code --install-extension PKief.material-icon-theme &
code --install-extension ms-vscode-remote.remote-ssh &
code --install-extension MS-vsliveshare.vsliveshare &
code --install-extension redhat.vscode-yaml &
code --install-extension golang.Go &
code --install-extension mhutchie.git-graph &
code --install-extension rangav.vscode-thunder-client &
code --install-extension zxh404.vscode-proto3 &
code --install-extension svelte.svelte-vscode

cp settings.json ~/.config/Code/User/settings.json
cp keybindings.json ~/.config/Code/User/keybindings.json

cp ~/os/cfg ~/.gitconfig
