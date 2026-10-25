cask "donna" do
  arch arm: "arm64"

  version "3.4.0"
  sha256 arm:   "21f9fa5cf5620414217c846f83c444db7644d00ebf22eddf28b64d9e1de9bc33",
         intel: "4254449f3c263f009ae5b6eccd96193dff223955af1a131ea1d7ba52ec95c1d1"

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
