cask "donna" do
  arch arm: "arm64"

  version "2.4.1"
  sha256 arm:   "5ac05c6ef85bca47802d3ed265d55f770a6203dd5c79b9d2dce2e906245ca54c",
         intel: "c53311039ff53faf79a253a9fe54fd9fdd2bee3e94c656ecf31646dab00001b6"

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
