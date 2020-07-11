brew update

brew upgrade

BREW_PREFIX=$(brew --prefix)

# Tap the required repos.
brew tap homebrew/cask-fonts
brew tap cjbassi/gotop

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names


# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install asciinema
brew install awscli
brew install bat
brew install cmus
brew install ffmpeg
brew install flac
brew install gh
brew install git
brew install gnupg
brew install go
brew install gotop
brew install grep
brew install htop
brew install hub
brew install jq
brew install kubectx
brew install kubernetes-cli
brew install mas
brew install minikube
brew install neofetch
brew install n
brew install openssl
brew install screenfetch
brew install the_silver_searcher
brew install tldr
brew install trash


brew cask install alfred
brew cask install docker
brew cask install google-chrome
brew cask install firefox
brew cask install font-hasklig
brew cask install font-hasklig-nerd-font
brew cask install font-jetbrains-mono
brew cask install graphql-playground
brew cask install postman
brew cask install notion
brew cask install iterm2
brew cask install slack
brew cask install tunnelbear
brew cask install virtualbox
brew cask install vlc


# Remove outdated versions from the cellar.
brew cleanup
