cask "foil" do
  version "0.2.3-beta"
  sha256 "87dc832be20ea0306bb39eb58e860291058dfd95bc0a562e5a540e772cd6980d"

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
