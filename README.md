# Spreek

Homebrew tap and releases for **Spreek**, a macOS menu-bar select-to-speak app for language learners: select text in any app, press ⌥S, and Spreek detects the language, reads it aloud with a neural voice, and keeps a history with favorites, folders, tags and notes.

## Install

```sh
brew install --cask gitkeniwo/spreek/spreek
```

Or download the DMG from [Releases](https://github.com/gitkeniwo/homebrew-spreek/releases/latest), open it and drag Spreek into Applications.

Requires macOS 15 (Sequoia) or later, Apple silicon or Intel.

### First launch

Spreek is not notarized, so macOS blocks it the first time you open it. Open **System Settings › Privacy & Security**, find *"Spreek" was blocked…* and click **Open Anyway**.

Spreek reads the selected text through the Accessibility permission (**System Settings › Privacy & Security › Accessibility**). After an upgrade macOS may ask for it again.

## Upgrade / uninstall

```sh
brew update && brew upgrade --cask spreek
brew uninstall --cask spreek          # keep your library
brew uninstall --zap --cask spreek    # also remove the library, audio cache and settings
```
