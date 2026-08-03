cask "donna" do
  arch arm: "arm64"

  version "2.0.0"
  sha256 arm:   "0232f017219a196cfe1aada5e9c2d816c75d86350a7bb9f0572cbafb6f3e2a2b",
         intel: "aaf795aa9e231385c1f14ca482cf88e20a2c09a9bbb6b8b34e7bd03e7e2995b4"

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
