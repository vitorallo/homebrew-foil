# Homebrew Tap for Foil

Local AI-powered security code review for Apple Silicon.

## Install

```bash
brew tap peachstudio/foil https://github.com/peachstudio/homebrew-foil
brew install --cask foil
```

## Update

```bash
brew upgrade --cask foil
```

## Uninstall

```bash
brew uninstall --cask foil
# Optional: remove all data
rm -rf ~/.foil
```

## About

Foil runs a 7B language model locally on your Mac (Apple Silicon / Metal GPU) to scan source code for security vulnerabilities. No cloud, no data leaves your machine.

- Website: https://foil.peachstudio.be
- By Peach Studio
