cask "donna" do
  arch arm: "arm64"

  version "1.11.0"
  sha256 arm:   "83f83878f9498c08075bbdd94a074827736691a42a346b43466c7c5f77474d28",
         intel: "ffcb3875e4e2621178545d1d99441b8d2ddb64ba711a71afc47f24e2c86ef375"

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
