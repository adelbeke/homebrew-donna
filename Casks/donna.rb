cask "donna" do
  arch arm: "arm64"

  version "2.4.2"
  sha256 arm:   "261d72602535227371be7b9219fd3fac4da12a622c1bb1ba8422d36e7a55432c",
         intel: "1014471d0758e1a9a5a69d97ec5a8e3fa68d58d7808a3cb8a4f90435f0dd34f4"

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
