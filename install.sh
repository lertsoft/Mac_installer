#!/usr/bin/env bash

# This is heavily inspired by the amazing work that this guys did!
# https://github.com/craychee/loki-init
# https://github.com/lukewertz/gabriel-init
# https://github.com/froboy/durandal-init
# https://github.com/ibuys/mac-builder

function pause() {
  read -p "$*"
}

CWD=($PWD)

cd ~

# We can't get them directly, but just click this button :)
xcode-select --install

pause 'Press [Enter] once you have installed XCode and XCode Command Line Tools.'

# Just make sure...
sudo xcodebuild -license accept


# DANGER, DANGER Will Robinson! 🤖
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Software Dev
brew update
brew install wget
brew install git
brew install node
brew install npm
brew install python
brew install python3
brew install mysql
brew install heroku
brew install --cask github
brew install --cask visual-studio-code

# MISC APPS
brew install --cask spotify
brew install --cask brave-browser
brew install --cask evernote
brew install --cask notion
brew install --cask bitwarden
brew install --cask calibre
brew install --cask veracrypt
brew install --cask wireshark
brew install --cask google-drive
brew install --cask imageoptim
brew install --cask protonvpn
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack

# Communictations
brew install --cask whatsapp
brew install --cask zoom
brew install --cask discord

# Quality of Life
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install --cask dozer
brew install --cask tiles
brew install --cask balenaetcher

# MAC CLI, Simplify command line
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

brew install mas
mas signin ronnycoste@pm.me
mas install 803453959 # Slack
# mas install 1147396723 #Whatsapp
mas install 1477089520 # Backtrack
mas install 966085870 # TICKTICK
mas install 1435957248 # DRAFTS

brew install brew-cask

brew tap caskroom/cask
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/binary

brew cask install Transmit


# Setup Python, Virtualenv
# http://gmvault.org/
python3 -m venv ~/Unix/env/virtualenv
source ~/Unix/env/virtualenv
pip install virtualenv
virtualenv -p /usr/bin/python ~/Unix/env/py2env
deactivate

cd ~

# Do the Mac thing that you have to do but you shouldn't have to do
# This https://github.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain
#curl -o ~/Library/LaunchAgents/ssh.add.a.plist https://raw.githubusercontent.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain/master/ssh.add.a.plist
touch ~/.ssh/config
echo "Host *
   AddKeysToAgent yes
   UseKeychain yes" >> ~/.ssh/config


# Hold my own hand to make sure I finish configuring.
echo "Add your ssh keys (you put them in your secret hiding place)."
pause 'Press [Enter] when you have added your ssh key.'
chmod 400 ~/.ssh/*

# Get git things
#curl -o /usr/local/etc/bash_completion.d/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
#curl -o /usr/local/etc/bash_completion.d/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

echo "NICE!! But... This is only the Beggining."
