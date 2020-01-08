# Laptop setup script

To use run the following (if you have cURL installed)

```
curl --remote-name https://raw.githubusercontent.com/gitguudd/laptop/master/setup.sh
sh ~/setup.sh
```

This script installs the following packages:

* Homebrew for package management
* Xcode-select CLI tools for git and some compilers
* Z Shell and some configurations (because it's cool)
* asdf for package management
* nginx for handling requests
* Neovim for text editing
* Postgresql 9.6 as the database for the application

This script will then install the following programming languages:
* Ruby 2.6.5
* Python 3.8.0
* NodeJS 10.16.3
