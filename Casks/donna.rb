cask "donna" do
  arch arm: "arm64"

  version "1.13.0"
  sha256 arm:   "3c4f08b8eea0fe2f88a352db1f29b7acedc4e948f2c6b0972b42a7e4741350a8",
         intel: "3dd2b2633822634044796880b6ae56d27d0d9666ef05600e5011564d155481d1"

  url "https://github.com/adelbeke/donna/releases/download/v#{version}/Donna-#{version}#{"-arm64" if arch == "arm64"}.dmg"
  name "Donna"
  desc "GitHub PR dashboard — filter, prioritise, track review status"
  homepage "https://github.com/adelbeke/donna"

  auto_updates true
  depends_on :macos

  app "Donna.app"

  zap trash: [
    "~/Library/Application Support/Donna",
    "~/Library/Preferences/com.dbkable.donna.plist",
    "~/Library/Saved Application State/com.dbkable.donna.savedState",
  ]
end
