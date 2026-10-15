<img width="256" height="256" alt="spreek-snavel-left-arcs-blauw" src="https://github.com/user-attachments/assets/5c46b53b-13d7-423f-88c2-ac8ccaaaa0db" />

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

Spreek reads the selected text through the Accessibility permission (**System Settings › Privacy & Security › Accessibility**). If it says Spreek has no permission although the switch is on, see [Troubleshooting](#troubleshooting).

## Upgrade / uninstall

```sh
brew update && brew upgrade --cask spreek
brew uninstall --cask spreek          # keep your library
brew uninstall --zap --cask spreek    # also remove the library, audio cache and settings
```

## Troubleshooting

### Accessibility is switched on, but Spreek still says it has no permission

macOS ties the Accessibility permission to an app's bundle ID *and* its code signature. If the entry for Spreek was created by a different build (an older release, or a development build), the switch in System Settings stays on but doesn't apply to the build you are running.

1. Quit Spreek.
2. Clear the old entry:

   ```sh
   tccutil reset Accessibility nl.spreek.app
   ```

   (or select Spreek in **System Settings › Privacy & Security › Accessibility**, remove it with **−**, and add it again).
3. Open Spreek from Applications and allow Accessibility when asked.

Newer releases are signed with a fixed certificate, so the permission survives upgrades. Upgrading from 0.1.0 or 0.1.1 (ad-hoc signed, a different signature for every build) to the first of them needs the steps above once.
