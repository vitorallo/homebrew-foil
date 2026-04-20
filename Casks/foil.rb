cask "foil" do
  version "0.2.3-beta"
  sha256 "caaeb92fb1f21497b1ba7a7478b29f36470fafe7f31b6000fe5de59dfb8a6dfa"

  url "https://github.com/vitorallo/foil-releases/releases/download/v#{version}/Foil.dmg"
  name "Foil"
  desc "Local AI-powered security code review for Apple Silicon"
  homepage "https://foil.peachstudio.be"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Foil.app"

  postflight do
    # weasyprint system dependencies for PDF report generation.
    # Non-fatal — Foil works without these, PDF export just won't be available.
    ohai "Installing PDF export dependencies (pango, cairo)..."
    system "brew", "install", "pango", "cairo"
  end

  uninstall quit: "be.peachstudio.foil"

  zap trash: [
    "~/.foil",
  ]
end
