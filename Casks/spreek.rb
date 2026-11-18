cask "spreek" do
  version "0.3.0"
  sha256 "d7140c41ac837443f36b06852d7fa004572303eb5f76207941a1e144e58e407e"

  url "https://github.com/gitkeniwo/Spreek/releases/download/v#{version}/Spreek-#{version}.dmg"
  name "Spreek"
  desc "Menu bar select-to-speak for language learners"
  homepage "https://github.com/gitkeniwo/Spreek"

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
