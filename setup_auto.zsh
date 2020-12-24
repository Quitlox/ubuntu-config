### Script ###

## Variables
HOME="/home/quitlox"
APP_GIT="$HOME/applications/git"
NVM_DIR="$APP_GIT/nvm"

## Iintialize ##
CWD=$(pwd)

## Snap Applications ##
declare -a snaps=(
    "chromium"
    "code"
    "spotify"
    "discord"
)

for i in "${snaps[@]}"
do
    snap install "$i"
done

## Apt Packages ##
declare -a apts=(
    "cmake"
    "curl"
)

for i in "${apts[@]}"
do
    apt --ignore-missing install "$i"
done

## Node Version Manager ##
export NVM_DIR="$APP_GIT/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"
nvm install node


## Shell ##

sudo apt install -y terminator
#sudo update-alternatives --config x-terminal-emulator
sudo apt install -y fonts-powerline
sudo apt install -y zsh

ZSH="$APP_GIT/oh-my-zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended
cp "$CWD/zshrc" "$HOME/.zshrc"
source "$HOME/.zshrc"

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
eval base16_tomorrow-night-eighties

## VSCode Extensions ##

code --force --install-extension k--kato.intellij-idea-keybindings

**Other**


install wireshark with correct permissions

make custom git repo for katoolin3 and change color of installed packages

make git repo for zsh setup

