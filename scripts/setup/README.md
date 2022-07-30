# Project Setup Utility

Download the scripts in the `/setup` directory. 

Setup alias `setup-project` as the path to the controller.sh file.
```sh
alias setup-project='sh /path/to/controller.sh'
``` 

It is a better idea to set these in the zshrc or bashrc files for wider usage.
```sh
alias setup-project='sh /path/to/controller.sh' >> ~/.zshrc
```

Restart the terminal and use the utility. 

### Usage
```sh
setup-project --{type}='path/to/project'
```

Example
```
setup-project --flask='.'
```

Currently, only flask setup is supported.
