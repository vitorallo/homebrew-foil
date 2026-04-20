cask "foil" do
  version "0.2.3-beta"
  sha256 "424767c6bdcda2c92c9dffd9ea5e36e7d8af3a6133c5a43390806b241d6b8ff1"

  url "https://github.com/vitorallo/foil-releases/releases/download/v#{version}/Foil.dmg"
  name "Foil"
  desc "Local AI-powered security code review for Apple Silicon"
  homepage "https://foil.peachstudio.be"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Foil.app"

  uninstall quit: "be.peachstudio.foil"

  zap trash: [
    "~/.foil",
  ]
end
