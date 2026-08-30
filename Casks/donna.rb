cask "donna" do
  arch arm: "arm64"

  version "3.0.0"
  sha256 arm:   "f93ad4ea7252e63d2cfc1f4f70e537160ab2e2e2b072b485a86d5e2b3c5ba36c",
         intel: "f9e0603bbd263d1f516888d448c6166dfcc0de842a4ce2fcdb9fc843987a88b6"

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
