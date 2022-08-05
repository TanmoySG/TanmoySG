# My macOS setup for local development

# Installs HomeBrew
if ! [ -x "$(command -v brew)" ]; then
    echo 'Installing Brew' >&2
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo 'Brew Already Installed!'
fi 

# Installs Git
if ! [ -x "$(command -v git)" ]; then
    echo 'Installing Git' >&2
    brew install git
else
    echo 'Git Already Installed!'
fi 

# Installs VS Code
if ! [ -x "$(command -v code)" ]; then
    echo 'Installing VS Code' >&2
    brew install --cask visual-studio-code
else
    echo 'VS Code Already Installed!'
fi

# Installs Python3
if ! [ -x "$(command -v python)" ] && ! [ -x "$(command -v python3)" ] ; then
    echo 'Installing Python' >&2
    brew install python
else
    echo 'Python Already Installed!'
fi 

# Installs NodeJS
if ! [ -x "$(command -v node)" ]; then
    echo 'Installing NodeJS' >&2
    brew install node
else
    echo 'NodeJS Already Installed!'
fi 

# Installs Golang
if ! [ -x "$(command -v go)" ]; then
    echo 'Installing GoLang' >&2
    brew install go
else
    echo 'GoLang Already Installed!'
fi 

# Installs Oh-My-Zsh
if ! [ -x "$(command -v omz)" ]; then
    echo 'Installing Oh-My-Zsh' >&2
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo 'OMZ Already Installed!'
fi 


# Installs jq
if ! [ -x "$(command -v jq)" ]; then
    echo 'Installing jq' >&2
    brew install jq
else
    echo 'jq Already Installed!'
fi 
