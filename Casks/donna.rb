cask "donna" do
  arch arm: "arm64"

  version "2.4.0"
  sha256 arm:   "84bcc7035b3ab17e2a3b4de7cdf1dc1c3fe84049678871c3e73adf9f122bf1ab",
         intel: "16d44b79f068a5bc5be6cac048e37328569a587d9b847e4176b5932f02300a93"

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
