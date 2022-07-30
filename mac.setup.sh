# My macOS setup for local development

# Setup brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
which brew

# Setup Git
brew install git
which git

# Setup VS Code
brew install --cask visual-studio-code
which code

# Setup Go
brew install go
which go

# Setup NodeJS
brew install node
which node
