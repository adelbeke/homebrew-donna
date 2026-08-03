cask "donna" do
  arch arm: "arm64"

  version "2.1.2"
  sha256 arm:   "d11b9d21f855efbcadc747e2f43b49865f8319846f1d0ca0027604a286645c93",
         intel: "030171c8c01ab78d4acd92340e7ca265b824921c712c50fe29d957f9471efdc3"

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
