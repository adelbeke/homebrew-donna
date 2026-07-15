cask "donna" do
  arch arm: "arm64"

  version "1.10.0"
  sha256 arm:   "896ebe34dca0226c46c332976805c7220365b12871030efff92716b981cc8348",
         intel: "3808f15a898c042628d07d8d581ec4c26b7d991f55f7c81eb1764d6ac919a4b0"

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
