cask "foil" do
  version "0.2.5-beta"
  sha256 "27955dbc3d7b38f89bb8e51c5257d894e143111db893eabf589657e0c5517082"

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
