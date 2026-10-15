cask "spreek" do
  version "0.1.1"
  sha256 "860908793786653f8de660e13f4d3b10a179b6341c003729b8993d62ea59f062"

  url "https://github.com/gitkeniwo/homebrew-spreek/releases/download/v#{version}/Spreek-#{version}.dmg"
  name "Spreek"
  desc "Menu bar select-to-speak for language learners"
  homepage "https://github.com/gitkeniwo/homebrew-spreek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Spreek.app"

  uninstall quit: "nl.spreek.app"

  zap trash: [
    "~/Library/Application Support/Spreek",
    "~/Library/Caches/nl.spreek.app",
    "~/Library/HTTPStorages/nl.spreek.app",
    "~/Library/Preferences/nl.spreek.app.plist",
  ]

  caveats <<~EOS
    Spreek is not notarized. The first time you open it, macOS blocks it:
      System Settings › Privacy & Security › "Spreek was blocked…" › Open Anyway

    Spreek reads the selected text through the Accessibility permission
    (System Settings › Privacy & Security › Accessibility). After an upgrade,
    macOS may ask for it again.
  EOS
end
