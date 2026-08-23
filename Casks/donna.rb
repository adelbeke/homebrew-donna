cask "donna" do
  arch arm: "arm64"

  version "2.3.0"
  sha256 arm:   "b0f47623c9a881445c2d2ed328bf88b71945a01a578b1ae598c2d0c62f9d4fed",
         intel: "a1636dadd4627622ba3aca94e335a1196c8dcb2573df574031f016ba30a1f10a"

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
