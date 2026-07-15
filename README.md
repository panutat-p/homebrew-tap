# homebrew-tap

Homebrew tap for panutat-p macOS apps.

## Install

```bash
brew tap panutat-p/tap
```

## Apps

| Token | Type | Description | Repo | Availability |
|------|------|-------------|------|--------------|
| `hyperzen` | Cask | macOS app that prevents idle sleep and keeps Teams active | [hyper-zen](https://github.com/panutat-p/hyper-zen) | Available |
| `json-young` | Cask | macOS app for validating and pretty-printing JSON | [json-young](https://github.com/panutat-p/json-young) | Available |
| `skope-buddy` | Formula | Netskope Client re-authentication autofill watcher | [skope-buddy](https://github.com/panutat-p/skope-buddy) | Available |

## Usage

```bash
# Install the Netskope autofill watcher
brew install panutat-p/tap/skope-buddy
skope-buddy

# Install an app
brew install --cask json-young

# Upgrade all
brew upgrade
```

```bash
brew install --cask hyperzen
```
