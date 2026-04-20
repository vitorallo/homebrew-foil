cask "foil" do
  version "0.2.3-beta"
  sha256 "026543fc89fbdbe3003506c2ef37d3d93224f4fddfdb65161cfb4ce312dc6a75"

  url "https://github.com/vitorallo/foil-releases/releases/download/v#{version}/Foil.dmg"
  name "Foil"
  desc "Local AI-powered security code review for Apple Silicon"
  homepage "https://foil.peachstudio.be"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Foil.app"

  uninstall quit:   "be.peachstudio.foil",
            delete: "~/Library/Preferences/be.peachstudio.foil.plist"

  zap trash: [
    "~/.foil",
    "~/Library/Preferences/be.peachstudio.foil.plist",
  ]
end
