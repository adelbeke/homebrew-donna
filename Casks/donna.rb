cask "donna" do
  arch arm: "arm64"

  version "3.4.1"
  sha256 arm:   "15e2f92c0b31cfd942d58ffa9f5563c801a0127252d657ecfafbe56e9f10ec6a",
         intel: "a94dced7512b3678c56f080d69bbda8cb9909e63438a0f8e43d35895b79a0c29"

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
