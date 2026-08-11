cask "donna" do
  arch arm: "arm64"

  version "2.2.0"
  sha256 arm:   "4e1d68477ce3b975155d9ff29902dd660ccc4935b48c24efabce5c56f8e0845e",
         intel: "002ba42f7ee7b30dff6ed8b0d83fa6b00503f78c738da0f1e45fffe251ffcb8c"

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
