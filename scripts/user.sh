git config --global user.email "dangdancheg@gmail.com"
git config --global user.name "dancheg97"
git config --global credential.helper store
git config --global http.sslVerify false

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['']"
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Super>Tab', '<Alt>Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-applications "['']"

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

echo 'alias vsync="cd ~/os;git pull;git commit -a -m .;git push"' >> ~/.zshrc
source ~/.zshrc
