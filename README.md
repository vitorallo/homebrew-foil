# Homebrew Tap for Foil

Local AI-powered security code review for Apple Silicon.

## Install

```bash
brew install python@3.14
brew tap vitorallo/foil
brew install --cask foil
```

## Update

```bash
brew upgrade --cask foil
```

## Uninstall

```bash
# Remove app (keeps models and scan data in ~/.foil)
brew uninstall --cask foil

# Full removal — deletes everything (models ~4 GB, venv, findings, logs)
brew uninstall --cask foil
rm -rf ~/.foil
```

## About

Foil runs a 7B language model locally on your Mac (Apple Silicon / Metal GPU) to scan source code for security vulnerabilities. No cloud, no data leaves your machine.

- Website: https://foil.peachstudio.be
- By Peach Studio
