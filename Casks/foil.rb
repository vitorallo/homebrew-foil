cask "foil" do
  version "0.2.5-beta"
  sha256 "13426449396d6bfdf8a38d9cfc7cc870511c0ec562cc3406a2862897dbc7d35a"

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
