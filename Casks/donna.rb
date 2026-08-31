cask "donna" do
  arch arm: "arm64"

  version "3.2.0"
  sha256 arm:   "5a841eecad58f7cb0d325c61d6285c68c056c816d378e5f87fe077e8937e80e8",
         intel: "e9de7ac66dbf10cf123e58257cae77c3578f3ae2555bd0ed42c912e0723bda23"

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
