# homebrew-tap

Homebrew tap for panutat-p macOS apps.

## Install

```bash
brew tap panutat-p/tap
```

## Apps

| Cask | Description | Repo | Availability |
|------|-------------|------|--------------|
| `hyperzen` | macOS app that prevents idle sleep and keeps Teams active | [hyper-zen](https://github.com/panutat-p/hyper-zen) | Next application release |
| `json-young` | macOS app for validating and pretty-printing JSON | [json-young](https://github.com/panutat-p/json-young) | Available |

## Usage

```bash
# Install an app
brew install --cask json-young

# Upgrade all
brew upgrade --cask
```

HyperZen's old command-line formula has been retired. Its first application
release will publish the `hyperzen` cask automatically; after that release:

```bash
brew install --cask hyperzen
```
