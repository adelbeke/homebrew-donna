cask "donna" do
  arch arm: "arm64"

  version "1.12.0"
  sha256 arm:   "536c06c523b638d7b6a125b214beabe78d4b7236c3412be71b835b896b361c00",
         intel: "f10ff5a1ef10dc114b88c37ff2bb4beff39aa06adbe9ecbf041aa072b022235a"

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
