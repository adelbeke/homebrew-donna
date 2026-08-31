cask "donna" do
  arch arm: "arm64"

  version "3.1.0"
  sha256 arm:   "18c3ccd92783207eb5866f877b5d9dd0c3d79419605d50c699ad1a689d303ef9",
         intel: "5e93fe8d4909d8cc80ef9e3eb53446b92fe808158c4303822edb492f2022ba96"

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
