cask "foil" do
  version "0.2.3-beta"
  sha256 "35328c1d0fe0338f8941867b92868e4612b484c77fc3ac594025ee67a3411ff8"

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
